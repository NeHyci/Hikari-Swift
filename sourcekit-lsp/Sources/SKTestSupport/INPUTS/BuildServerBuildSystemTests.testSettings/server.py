import json
import os
import sys


while True:
    line = sys.stdin.readline()
    if len(line) == 0:
        break

    assert line.startswith('Content-Length:')
    length = int(line[len('Content-Length:'):])
    sys.stdin.readline()
    message = json.loads(sys.stdin.read(length))

    response = None
    if message["method"] == "build/initialize":
        response = {
            "jsonrpc": "2.0",
            "id": message["id"],
            "result": {
                "displayName": "test server",
                "version": "0.1",
                "bspVersion": "2.0",
                "rootUri": "blah",
                "capabilities": {"languageIds": ["a", "b"]},
                "data": {
                    "indexStorePath": "some/index/store/path"
                }
            }
        }
    elif message["method"] == "build/initialized":
        continue
    elif message["method"] == "build/shutdown":
        response = {
            "jsonrpc": "2.0",
            "id": message["id"],
            "result": None
        }
    elif message["method"] == "build/exit":
        break
    elif message["method"] == "textDocument/sourceKitOptions":
        file_path = message["params"]["uri"][len("file://"):]
        if file_path.endswith(".missing"):
            # simulate error response for unhandled file
            response = {
                "jsonrpc": "2.0",
                "id": message["id"],
                "error": {
                    "code": -32600,
                    "message": "unknown file {}".format(file_path),
                }
            }
        else:
            response = {
                "jsonrpc": "2.0",
                "id": message["id"],
                "result": {
                    "options": ["-a", "-b"],
                    "workingDirectory": os.path.dirname(file_path),
                }
            }
    # ignore other notifications
    elif "id" in message:
        response = {
            "jsonrpc": "2.0",
            "id": message["id"],
            "error": {
                "code": -32600,
                "message": "unhandled method {}".format(message["method"]),
            }
        }

    if response:
        responseStr = json.dumps(response)
        try:
            sys.stdout.buffer.write(f"Content-Length: {len(responseStr)}\r\n\r\n{responseStr}".encode('utf-8'))
            sys.stdout.flush()
        except IOError:
            # stdout closed, time to quit
            break
