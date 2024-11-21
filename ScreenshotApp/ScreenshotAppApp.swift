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
    
    //Appstorage用于绑定一个变量，这个变量变动时跟着的 视图也发生变动
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
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
        // isInserted 用于判断是否插入视图
        MenuBarExtra("Screenshots",
                     systemImage: "doc.text.image",
                     isInserted: $menuBarExtraIsInserted){
            MenubarContentView(vm: vm)
        }
        .menuBarExtraStyle(.window)//定义窗口模式，否者menu只能点击
        
        // 定义setting
        Settings{
            SettingsViews()
        }
    }
}
