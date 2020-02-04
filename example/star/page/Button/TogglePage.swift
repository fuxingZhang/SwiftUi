//
//  TogglePage.swift
//  star
//
//  Created by 张复星 on 2020/2/4.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct TogglePage: View {
    @State var isOn = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn == true ? "on" : "off")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle(Text("Toggle"))
    }
}

struct TogglePage_Previews: PreviewProvider {
    static var previews: some View {
        TogglePage()
    }
}
