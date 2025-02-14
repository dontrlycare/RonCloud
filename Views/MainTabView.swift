import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    @StateObject private var playerViewModel = PlayerViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("�������")
                    }
                    .tag(0)
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("�����")
                    }
                    .tag(1)
                
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("����������")
                    }
                    .tag(2)
            }
            
            MiniPlayer()
                .environmentObject(playerViewModel)
        }
    }
}
