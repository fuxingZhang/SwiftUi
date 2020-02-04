//
//  StepperPage.swift
//  star
//
//  Created by 张复星 on 2020/2/4.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct StepperPage: View {
    @State var value = 0
    
    var body: some View {
        HStack {
            Stepper(value: $value, step: 2, onEditingChanged: { c in
                print(c)
            }) {
                Text("Stepper Value: \(self.value)")
            }.padding(50)
        }.navigationBarTitle(Text("Stepper"))
    }
}

struct StepperPage_Previews: PreviewProvider {
    static var previews: some View {
        StepperPage()
    }
}
