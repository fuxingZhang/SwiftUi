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
                Section(header: Text("Special")){
                    NavigationLink(destination: WebViewPage()){
                        Row(title: "WebView", subTitle: "display web page")
                    }
                    NavigationLink(destination: ControllerPage<UIKitController>()){
                        Row(title: "UIViewController", subTitle: "display the UIViewController")
                    }
                }
                
                Section(header: Text("Basic components")) {
                    NavigationLink(destination: TextPage()) {
                        Row(title: "Text", subTitle: "text page")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        Row(title: "TextField", subTitle: "input username and password")
                    }
                    NavigationLink(destination: ImagePage()) {
                        Row(title: "Image", subTitle: "display local image")
                    }
                    NavigationLink(destination: WebImagePage()) {
                        Row(title: "WebImage", subTitle: "display web image")
                    }
                }
                
                Section(header: Text("Button")){
                    NavigationLink(destination: ButtonPage()) {
                        Row(title: "Button", subTitle: "press button")
                    }
                    NavigationLink(destination: NavigationButtonPage()) {
                        Row(title: "NavigationButton", subTitle: "Navigation Button")
                    }
                    NavigationLink(destination: Text("i am a text")) {
                        Row(title: "PresentationButton", subTitle: "new page with text")
                    }
                    NavigationLink(destination: EditButtonPage()) {
                        Row(title: "EditButton", subTitle: "toggle edit mode")
                    }
                }
                
                Section(header: Text("International")){
                    NavigationLink(destination: International()) {
                        Row(title: "International", subTitle: "International")
                    }
                }
                
                Section(header: Text("Picker")){
                    NavigationLink(destination: PickerPage()) {
                        Row(title: "Picker", subTitle: "custom data source picker")
                    }
                    NavigationLink(destination: DatePickerPage()) {
                        Row(title: "DatePicker", subTitle: "date select")
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
        ContentView()
            .colorScheme(.light)
    }
}
