//
//  SettingsViews.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI

struct SettingsViews: View {
    var body: some View {
        // TabView 可以在不同的选项卡之间导航
        TabView{
            KeyboardShotcutSettingsView()
                .tabItem{ Label("Keyboard", systemImage: "keyboard")}
            
//            Text("Second") //这里替换有什么用
            MenubarSettingsView()
                .tabItem{Label("MenuBarExtra", systemImage: "tray")}
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    SettingsViews()
}
