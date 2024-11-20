//
//  SettingsViews.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI

struct SettingsViews: View {
    var body: some View {
        TabView{
            KeyboardShotcutSettingsView()
                .tabItem{ Label("Keyboard", systemImage: "keyboard")}
            
            Text("Second")
                .tabItem{Label("second", systemImage: "gear")}
        }
    }
}

#Preview {
    SettingsViews()
}
