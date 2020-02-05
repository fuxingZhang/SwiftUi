//
//  VStackPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct VStackPage: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Divider()
            Text("hi")
        }
    }
}

struct VStackPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackPage()
    }
}
