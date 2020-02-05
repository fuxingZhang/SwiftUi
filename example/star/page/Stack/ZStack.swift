//
//  ZStack.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ZStack: View {
    var body: some View {
        ZStack {
            Text("Hello, World!")
            Divider()
            Text("hi")
        }
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack()
    }
}
