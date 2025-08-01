import SwiftUI
import UniformTypeIdentifiers

@main
struct ChristineApp: App {
    @StateObject private var memory = MemoryGraph()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(memory)
                .onAppear {
                    print("Memory loaded. Ethics online. Welcome back, Mr. Joe.")
                }
        }
    }
}

struct ContentView: View {
    @EnvironmentObject var memory: MemoryGraph

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("🧠 Chrissy Console")
                    .font(.largeTitle)
                    .bold()

                MemoryGraphView()
                    .frame(height: 250)

                FileEditorLauncher()

                Spacer()
            }
            .padding()
        }
    }
}

struct MemoryGraphView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [4]))
            .overlay(Text("Memory graph placeholder"))
    }
}

struct FileEditorLauncher: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Edit Files")
                .font(.headline)

            HStack {
                Button("Open .docx") {
                    // Implement DOCX editor launcher
                }
                Button("Open .xlsx") {
                    // Implement XLSX editor launcher
                }
            }
        }
    }
}

final class MemoryGraph: ObservableObject {
    @Published var nodes: [String] = ["Boot", "Greeting", "Project Seed"]
    // Future: Add edges, timestamps, and weights
}

Initial commit of Chrissy (ChristineApp.swift)
