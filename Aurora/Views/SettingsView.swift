//
//  SettingsView.swift
//  Aurora
//
//  Created by Daniel on 7/14/24.
//

import SwiftUI

struct GeneralSettingsView: View {
    @AppStorage("TransparentUI") private var TransparentUIToggle = false
    @AppStorage("DiscordRPC") private var DiscordRPCToggle = false
    @AppStorage("username") private var username: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            TextField(
                "username",
                text: $username
            )
            .disableAutocorrection(true)
            Toggle("Transparent UI", isOn: $TransparentUIToggle)
            Toggle("Discord RPC (Coming soon)", isOn: $DiscordRPCToggle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SettingsView: View {
    private enum Tabs: Hashable {
        case general
    }

    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }
                .tag(Tabs.general)
        }
        .padding(20)
        .frame(width: 320, height: 90)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
