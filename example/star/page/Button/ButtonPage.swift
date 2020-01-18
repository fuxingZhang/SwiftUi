//
//  ButtonPage.swift
//  star
//
//  Created by 张复星 on 2020/1/18.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ButtonPage: View {
    
    @State var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
            print("tapped")
        }) {
            Text("i am a button")
                .bold()
                .font(.system(size: 40, design: .rounded))
                .shadow(radius: 1)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("this is title"),
                message: Text("this is message"),
                primaryButton: .destructive(Text("confirm")) {
                    print("confirm")
                },
                secondaryButton: .cancel())
        })
            .navigationBarTitle(Text("Button"))
        
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
