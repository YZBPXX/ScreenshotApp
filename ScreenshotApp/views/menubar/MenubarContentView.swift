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
        // 修改group为Hstack，自动对齐和填充
        VStack(alignment: .leading, spacing: 10){

            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 50, maximum: 100))]){
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
            .contentMargins(20)
            .frame(maxHeight: 200)
            
            HStack{
                Button(action: {
                    vm.takeScreenshot(for: .area)
                }, label: {
                    Label("Make a area screenshot", systemImage: "paperplane.circle")
                })
                Button(action: {
                    vm.takeScreenshot(for: .window)
                }, label: {
                    Label("Make a window screenshot", systemImage: "paperplane.circle")
                })
                Button(action: {
                    vm.takeScreenshot(for: .full)
                }, label: {
                    Label("Make a full screenshot", systemImage: "paperplane.circle")
                })
                
                //这几种button的定义方式的区别？还有什么定义方式
//                Button("Make a area "){
//                    vm.takeScreenshot(for: .area)
//                }
//                .keyboardShortcut(KeyEquivalent("a"), modifiers: .command) //绑定一个出发快捷键
//                Button("Make a window"){
//                    vm.takeScreenshot(for: .window)
//                }
//                Button("Make a full"){
//                    vm.takeScreenshot(for: .full)
//                }
            }
        }
        .padding()
    }
}

#Preview {
    MenubarContentView(vm: ScreencaptureViewModel())
}
