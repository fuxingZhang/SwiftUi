//
//  NavicationButtonPage.swift
//  star
//
//  Created by 张复星 on 2020/1/22.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct NavigationButtonPage: View {
    var body: some View {
        NavigationLink(destination: NavigationButtonPage()) {
            Text("NavicationButton")
                .bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }
        .navigationBarTitle(Text("Page"))
    }
}

struct NavigationButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
