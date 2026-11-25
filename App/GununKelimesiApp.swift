import SwiftUI

@main
struct GununKelimesiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var todayResetToken = UUID()

    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView(resetToken: todayResetToken)
                .tabItem { Label("Bugün", systemImage: "sun.max") }
                .tag(0)
            AllWordsView()
                .tabItem { Label("Kelimeler", systemImage: "books.vertical") }
                .tag(1)
        }
        .tint(Theme.english)
        // Widget'a dokununca bugünün kelimesine dön
        .onOpenURL { _ in
            selectedTab = 0
            todayResetToken = UUID()
        }
    }
}
