//
//  NavigationViewPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct NavigationViewPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("😀🐋🐬🐳🐠")
//                    .blur(radius: 0.5)
                Text("Swifter")
                    .bold()
                    .foregroundColor(.orange)
//                    .background(Color.black)
                    .font(.largeTitle)
            }
        }
        .navigationBarTitle(Text("NavigationView"), displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            print("tapped")
        }, label: {
            Text("right").foregroundColor(.orange)
        }))
    }
}

struct NavigationViewPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewPage()
    }
}
