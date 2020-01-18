//
//  ContentView.swift
//  star
//
//  Created by 张复星 on 2020/1/17.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("special")){
                    NavigationLink(destination: WebViewPage()){
                        PageRow(title: "WebView", subTitle: "webview")
                    }
                    
                    NavigationLink(destination: ControllerPage<UIKitController>()){
                        PageRow(title: "UIViewController", subTitle: "webview")
                    }
                }
                Section(header: Text("basic components")) {
                    NavigationLink(destination: TextPage()) {
                        PageRow(title: "Text", subTitle: "text page")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        PageRow(title: "TextField", subTitle: "input username and password")
                    }
                    NavigationLink(destination: ImagePage()) {
                        PageRow(title: "Image", subTitle: "display local image")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        PageRow(title: "WebImage", subTitle: "display web image")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("SwiftUi"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("tap")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}
