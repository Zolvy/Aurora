//
//  SidebarView.swift
//  Aurora
//
//  Created by Daniel on 7/14/24.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        List {
            NavigationLink(destination: HomeView()) {
                Label("Home", systemImage: "house")
            }
            NavigationLink(destination: Text("Music")) {
                Label("Music", systemImage: "music.note")
            }
            NavigationLink(destination: Text("Music")) {
                Label("Albums", systemImage: "list.dash")
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Sidebar")
    }

    struct SidebarView_Previews: PreviewProvider {
        static var previews: some View {
            SidebarView()
        }
    }
}

#Preview {
    SidebarView()
}
