//
//  ScrollViewPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ScrollViewPage: View {
    var body: some View {
        ScrollView {
            Text("swiftui").padding(20)
            Divider()
            Image("icon")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("hello")
        }
        .border(Color.gray, width: 1)
        .cornerRadius(10)
        .padding(10)
        .navigationBarTitle(Text("srollview"))
    }
}

struct ScrollViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
