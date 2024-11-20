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
            KeyboardShortcuts.Recorder("Screenshot Area", name: .screenshotCapture)
            KeyboardShortcuts.Recorder("Screenshot Window", name: .screenshotCaptureWindow)
            KeyboardShortcuts.Recorder("Screenshot Full", name: .screenshotCaptureFull)
        }
    }
}

#Preview {
    KeyboardShotcutSettingsView()
}
