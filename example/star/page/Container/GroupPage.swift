//
//  GroupPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct GroupPage: View {
    var body: some View {
        VStack {
            Group {
                Text("hello world!")
                Text("hello world!")
            }
            .padding(5)
            .border(Color.orange, width: 1)
            .cornerRadius(5)
            
            Group {
                Text("hello world!")
                Text("hello world!")
            }
            .padding(5)
            .border(Color.black, width: 1)
            .cornerRadius(5)
            
            Group {
                Text("hello world!")
                Text("hello world!")
            }
            .padding(5)
            .border(Color.purple, width: 1)
            .cornerRadius(5)
        }
        .navigationBarTitle(Text("Group"))
    }
}

struct GroupPage_Previews: PreviewProvider {
    static var previews: some View {
        GroupPage()
    }
}
