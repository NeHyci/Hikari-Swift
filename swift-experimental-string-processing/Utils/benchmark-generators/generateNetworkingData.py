import string
import random

random.seed(0)

def ipv6():
  return ":".join(["".join([random.choice(string.hexdigits) for _ in range(4)]) for _ in range(8)])

def ipv4():
  return ".".join([str(random.randint(1,255)) for _ in range(4)])

def mac():
  x = random.randint(0,1)
  if x == 0:
    raw = "{:02x}".format(random.randint(0,2**48-1))
    return ":".join([raw[i:i + 2] for i in range(0, len(raw), 2)])
  else:
    raw = "{:02x}".format(random.randint(0,2**48-1))
    return "-".join([raw[i:i + 2] for i in range(0, len(raw), 2)])

res = """
extension Inputs {{
  /// Generated by Utils/benchmark-generators/generateNetworkingData.py

  static let ipv4Addresses: [String] = {0}
  static let ipv6Addresses: [String] = {1}
  static let macAddresses: [String] = {2}
}}
"""

ipv4Addrs = [ipv4() for _ in range(1000)]
ipv4Formatted = "[" + ",\n    ".join(["\"" + x + "\"" for x in ipv4Addrs]) + "]"

ipv6Addrs = [ipv6() for _ in range(1000)]
ipv6Formatted = "[" + ",\n    ".join(["\"" + x + "\"" for x in ipv6Addrs]) + "]"

macAddrs = [mac() for _ in range(1000)]
macFormatted = "[" + ",\n    ".join(["\"" + x + "\"" for x in macAddrs]) + "]"

print(res.format(ipv4Formatted, ipv6Formatted, macFormatted))