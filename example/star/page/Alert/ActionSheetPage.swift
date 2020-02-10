//
//  ActionSheetPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ActionSheetPage: View {
    @State var showSheet = false
    
    private var sheet: ActionSheet {
        let action = ActionSheet(
            title: Text("Title"),
            message: Text("Message"),
            buttons: [
                .default(Text("default"), action: {
                    print("default")
                    self.showSheet = false
                }),
                .destructive(Text("destructive"), action: {
                    print("destructive")
                    self.showSheet = false
                }),
                .cancel({
                    print("cancel")
                    self.showSheet = false
                })
            ]
        )
        
        return action
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet = true
            }) {
                Text("ActionSheet")
                    .bold()
                    .font(.system(.largeTitle, design: .rounded))
            }
//            .actionSheet(isPresented: $showSheet, content: { sheet })
            .actionSheet(isPresented: $showSheet) {
                sheet
            }
        }
    }
}

struct ActionSheetPage_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPage()
    }
}
