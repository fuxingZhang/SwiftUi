//
//  SectionPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct SectionPage: View {
    var body: some View {
        VStack {
            List {
                Section(header: Text("i am header"), footer: Text("i am footer")) {
                    ForEach(0..<3) {
                        Text("hello \($0)")
                    }
                }
                Section(header: Text("i am header2"), footer: Text("i am footer2")) {
                    ForEach(6..<10) {
                        Text("hello \($0)").bold()
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .background(Color.white)
            
            Button(action: {
                print("tapped")
            }) {
                Text("swiftui")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 45)
            }
            .background(Color.orange)
            .cornerRadius(5)
        }
        .background(Color.white)
        .navigationBarTitle(Text("Section"))
    }
}

struct SectionPage_Previews: PreviewProvider {
    static var previews: some View {
        SectionPage()
    }
}
