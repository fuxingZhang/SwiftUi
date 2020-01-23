//
//  PickerPage.swift
//  star
//
//  Created by 张复星 on 2020/1/23.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct PickerPage: View {
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    let leftSource = (0..<10).map { $0%2 == 0 ? "🐰\($0)" : "🐶\($0)" }
    let rightSource = (11...36).map { String($0 - 1, radix: $0).uppercased() }
    
    var body: some View {
        HStack {
            VStack {
                Text("left value:")
                Text("\(self.leftSource[self.leftIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Picker(selection: $leftIndex, label: Text("left picker")) {
                    ForEach(0..<leftSource.count) {
                        Text(self.leftSource[$0]).tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width/2)
            }
            
            VStack {
                Text("right value:")
                Text("\(self.rightSource[self.rightIndex])")
                    .foregroundColor(.black)
                .bold()
                    .font(.largeTitle)
                Picker(selection: $rightIndex, label: Text("right picker")) {
                    ForEach(0..<rightSource.count) {
                        Text(self.rightSource[$0]).tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width/2)
            }
        }
        .navigationBarTitle(Text("Picker"))
    }
}

struct PickerPage_Previews: PreviewProvider {
    static var previews: some View {
        PickerPage()
    }
}
