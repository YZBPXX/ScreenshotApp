//
//  ScreencaptureViewModel.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI
import KeyboardShortcuts

// ObservableObject 观察者模式，用于管理、跟新视图中的共享变量
class ScreencaptureViewModel: ObservableObject {
    
    enum ScreenshotType {
        case full
        case window
        case area
        
        var processArgument: [String] {
            switch self{
                case .full:
                    ["-c"]
                case .window:
                    ["-cw"]
                case .area:
                    ["-cs"]
            }
        }
    }
    
    // 共享变量需要Published修饰
    // [NSImage]表示 NSImage类型的数组
    // () 表示空数组
    @Published var images = [NSImage]()
    init() {
        KeyboardShortcuts.onKeyUp(for: .screenshotCapture) { [self] in
            self.takeScreenshot(for: .area)
        }
        
        KeyboardShortcuts.onKeyUp(for: .screenshotCaptureFull) { [self] in
            self.takeScreenshot(for: .full)
        }
        
        KeyboardShortcuts.onKeyUp(for: .screenshotCaptureWindow) { [self] in
            self.takeScreenshot(for: .window)
        }
    }
    func takeScreenshot(for type: ScreenshotType){
        let task = Process()
        task.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        task.arguments = type.processArgument
        print(type.processArgument)
//        task.arguments = ["-cw"]
        
        do{
            try task.run()
            task.waitUntilExit()
            getImageFromPasteboard()
        }catch{
            print("could not capture : \(error)")
        }
    }
    private func getImageFromPasteboard(){
        //guard 类似if
        guard NSPasteboard.general.canReadItem(withDataConformingToTypes: NSImage.imageTypes) else{return}
        //NSImage() 初始化方法
        //NSPasteboard.general 全局剪切板
        guard let image = NSImage(pasteboard: NSPasteboard.general) else{ return}
        self.images.append(image)
//        self.image = image
    }
}
