//
//  ListPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ListPage: View {
    var body: some View {
        List(0..<30) { item in
            Text("Hello World!")
        }.navigationBarTitle(Text("List"), displayMode: .large)
    }
}

struct ListPage_Previews: PreviewProvider {
    static var previews: some View {
        ListPage()
    }
}
