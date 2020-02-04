//
//  SliderPage.swift
//  star
//
//  Created by 张复星 on 2020/2/4.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct SliderPage: View {
    @State var rating = 0.5
    
    var body: some View {
        VStack {
            Text("Slider Value: \(self.rating)")
            Slider(value: $rating)
                .padding(30)
        }
    .navigationBarTitle(Text("Slider"))
    }
}

struct SliderPage_Previews: PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
