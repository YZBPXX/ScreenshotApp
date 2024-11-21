//
//  MenubarSettingsView.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/21.
//

import SwiftUI



struct MenubarSettingsView: View {
    
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
    var body: some View {
        Form{
            // 单选框，isON：结果存储在menuBarExtraIsInserted
            Toggle("show menu bar extra", isOn: $menuBarExtraIsInserted)
        }
    }
}

#Preview {
    MenubarSettingsView()
}
