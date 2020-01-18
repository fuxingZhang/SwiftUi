//
//  ImagePage.swift
//  star
//
//  Created by 张复星 on 2020/1/18.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ImagePage: View {
    let range = 1..<6
    
    var body: some View {
        VStack{
            ForEach(range){
                index in Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30*index), height: CGFloat(30*index), alignment: .center)
                    .onTapGesture {
                        print("Tap \(index)")
                }
                
            }
        }.navigationBarTitle(Text("image"))
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
