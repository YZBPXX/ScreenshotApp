//
//  Keyboardshortcuts+Global.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import Foundation
import KeyboardShortcuts

//这种方法定义了一堆快捷键，供使用
extension KeyboardShortcuts.Name {
    // .init()定义了触发键
    // Self用于应用结构体等类型本身
    // .init() 调用扩展类型的构造器
    static let screenshotCapture = Self("screenshotCapture", default: .init(.three, modifiers: [.option, .command]))
    static let screenshotCaptureFull = Self("screenshotCaptureFull", default: .init(.four, modifiers: [.option, .command]))
    static let screenshotCaptureWindow = Self("screenshotCaptureWindow", default: .init(.five, modifiers: [.option, .command]))
}
