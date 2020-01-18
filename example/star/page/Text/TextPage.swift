//
//  TextPage.swift
//  star
//
//  Created by 张复星 on 2020/1/17.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

private let github = "https://github.com"

struct TextPage: View {
    var body: some View {
        VStack(spacing: 15) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!")
                .foregroundColor(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x:0, y:2)
            
            Text(github)
                .underline(true, color: Color.gray)
                .font(.system(size:16,design: .serif))
                .onTapGesture {
                    print(github)
            }
            
            HStack {
                Text("Text")
                Text("TextField").bold()
                Text("secureFiled").foregroundColor(.orange)
            }
            
            Text("view and controls are the visual building blocks of your app's user interface." +
                " use them to present your app's content onscreen.")
                .lineLimit(nil)
        }
        
    }
}

struct TextPage_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
