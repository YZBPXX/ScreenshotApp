//
//  ScreenshotAppApp.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI

@main
struct ScreenshotAppApp: App {
    
    @StateObject var vm = ScreencaptureViewModel()
    var body: some Scene {
        // 定义主窗口
        // 只有一个窗口
        Window("Screenshots", id: "main", content:{
            ContentView(vm: vm)
        })
        //WindowGroup 意味着可以开多个窗口
//        WindowGroup {
//            ContentView(vm: vm)
//        }
        //菜单栏
        MenuBarExtra("Screenshots", systemImage: "doc.text.image"){
            MenubarContentView(vm: vm)
        }
        
        // 定义setting
        Settings{
            SettingsViews()
        }
    }
}
