//
//  KeyboardShotcutSettingsView.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI
import KeyboardShortcuts
struct KeyboardShotcutSettingsView: View {
    var body: some View {
        Form {
            // Recorder是KeyboardShortcuts的一个组件，用于显示快捷键记录器
            // name中表示的是绑定的快捷键名称
            KeyboardShortcuts.Recorder("Screenshot Area", name: .screenshotCapture)
            KeyboardShortcuts.Recorder("Screenshot Window", name: .screenshotCaptureWindow)
            KeyboardShortcuts.Recorder("Screenshot Full", name: .screenshotCaptureFull)
        }
    }
}

#Preview {
    KeyboardShotcutSettingsView()
}
