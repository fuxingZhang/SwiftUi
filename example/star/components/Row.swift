//
//  PageRow.swift
//  star
//
//  Created by 张复星 on 2020/1/17.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct Row: View {
    private let title: String
    private let subTitle: String?
    
    init(title: String, subTitle: String? = nil){
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
        
    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(title: "row data")
    }
}
