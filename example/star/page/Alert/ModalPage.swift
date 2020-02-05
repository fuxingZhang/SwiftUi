//
//  ModalPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ModalPage: View {
    @State var showModal = false
    
    var modal: Modal {
        return Model(PickerPage(), onDismiss: {
            print("View Dismiss!")
            self.showModal = false
        })
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.showModal = true
            }) {
                Text("Model View")
                    .bold()
                    .font(.system(.largeTitle, design: .serif))
            }
            .presentation(showModal ? modal : nil)
        }
    }
}

struct ModalPage_Previews: PreviewProvider {
    static var previews: some View {
        ModalPage()
    }
}
