//
//  ForEachPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ForEachPage: View {
    let data = (0..<5)
    
    var body: some View {
        ForEach(data) { e in
            Text("hello \(e)")
                .bold()
                .font(.system(size: 25, design: .monospaced))
                .padding(5)
        }
        .border(Color.gray, width: 1)
        .cornerRadius(10)
        .navigationBarTitle(Text("ForEach"))
    }
}

struct ForEachPage_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPage()
    }
}
