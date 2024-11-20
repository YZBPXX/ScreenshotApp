//
//  Keyboardshortcuts+Global.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import Foundation
import KeyboardShortcuts

extension KeyboardShortcuts.Name {
    static let screenshotCapture = Self("screenshotCapture", default: .init(.three, modifiers: [.option, .command]))
    static let screenshotCaptureFull = Self("screenshotCaptureFull", default: .init(.four, modifiers: [.option, .command]))
    static let screenshotCaptureWindow = Self("screenshotCaptureWindow", default: .init(.five, modifiers: [.option, .command]))
}
