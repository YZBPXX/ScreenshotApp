//
//  MenubarContentView.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI

struct MenubarContentView: View {
    
    @ObservedObject var vm: ScreencaptureViewModel
    
    var body: some View {
        Group{
            Button("Make a area "){
                vm.takeScreenshot(for: .area)
            }
            .keyboardShortcut(KeyEquivalent("a"), modifiers: .command) //绑定一个出发快捷键
            Button("Make a window"){
                vm.takeScreenshot(for: .window)
            }
            Button("Make a full"){
                vm.takeScreenshot(for: .full)
            }
        }
    }
}

#Preview {
    MenubarContentView(vm: ScreencaptureViewModel())
}
