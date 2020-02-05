//
//  AlertPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct AlertPage: View {
    @State var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
            print("tapped")
        }) {
            Text("click")
                .font(.system(size: 40, design: .rounded))
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("pay $1000"), message: Text("careful"), primaryButton: .destructive(Text("confirm")) {
                print("paid")
                }, secondaryButton: .cancel())
        }).navigationBarTitle(Text("Alert"))
    }
}

struct AlertPage_Previews: PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
