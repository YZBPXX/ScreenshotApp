//
//  ContentView.swift
//  ScreenshotApp
//
//  Created by yzb on 2024/11/20.
//

import SwiftUI

struct ContentView: View {
    // 每个新打开的窗口都能使用它
    @ObservedObject var vm: ScreencaptureViewModel
//    @State private var image:NSImage? = nil
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 300))]){
                    // \.self用元素本身作为标识
                    ForEach(vm.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                        //可拖拽
                        //                        .onDrag({NSItemProvider(object: image)})
                            .draggable(image)
                    }
                }
            }
            HStack{
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
        .padding()
    }
}


#Preview {
    ContentView(vm: ScreencaptureViewModel())
}
