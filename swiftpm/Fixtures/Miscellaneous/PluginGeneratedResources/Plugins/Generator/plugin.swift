import PackagePlugin

@main
struct GeneratorPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        return [
            .prebuildCommand(
                displayName: "Generating empty file",
                executable: .init("/usr/bin/touch"),
                arguments: [context.pluginWorkDirectory.appending("best.txt")],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
