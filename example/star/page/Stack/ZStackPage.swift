//
//  ZStackPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ZStackPage: View {
    var body: some View {
        ZStack {
            Text("Hello, World!")
            Divider()
            Text("hi")
        }
    }
}

struct ZStackPage_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPage()
    }
}
