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
                    NavigationLink(destination: TogglePage()) {
                        Row(title: "Toggle", subTitle: "Toggle state")
                    }
                    NavigationLink(destination: SliderPage()) {
                        Row(title: "Slider", subTitle: "Slider")
                    }
                    NavigationLink(destination: StepperPage()) {
                        Row(title: "Stepper", subTitle: "Stepper")
                    }
                }
                
                Section(header: Text("Navigation")){
                    NavigationLink(destination: NavigationViewPage()) {
                        Row(title: "NavigationView", subTitle: "used to create a view container that contains top navigation bar")
                    }
                    NavigationLink(destination: TableViewPage()) {
                        Row(title: "TabBar", subTitle: "used to create a view container that contains bottom TabBar")
                    }
                }
                
                Section(header: Text("Alert")){
                    NavigationLink(destination: AlertPage()) {
                        Row(title: "Alert", subTitle: "display alert")
                    }
                    NavigationLink(destination: ActionSheetPage()) {
                        Row(title: "ActionSheet", subTitle: "pop up a selection box")
                    }
                    NavigationLink(destination: PopoverPage()) {
                        Row(title: "Popover", subTitle: "pop up a view")
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
