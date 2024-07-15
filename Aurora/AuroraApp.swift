
import SwiftUI
import AppKit
@main
struct AuroraApp: App {
    @State private var fileURL: URL?

    var body: some Scene {
        WindowGroup {
         ContentView()
        }.commands {
            CommandGroup(before: CommandGroupPlacement.newItem) {
                Button("Import File") {
                    let panel = NSOpenPanel()
                    panel.allowedFileTypes = ["mp3", "m4a", "flac"]
                    panel.begin { result in
                        if result == .OK {
                            guard let url = panel.url else { return }
                            fileURL = url
                            let fileName = url.lastPathComponent
                            print("Imported file: \(fileName)")
                        }
                    }
                }
            }
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
