//
//  InternationalPage.swift
//  star
//
//  Created by 张复星 on 2020/2/3.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct International: View {
    // 1: use var
    //    var id: String? = ""
    //    var body: some View {
    //        HStack {
    //            Text("根据系统语言展示文本: \(id!)")
    //            Text(NSLocalizedString("lang", comment: ""))
    //            Text("lang")
    //        }
    //    }
    
    // 2: use private
    //    private let id: String?
    //    init(id: String? = nil){
    //        self.id = id
    //    }
    //    var body: some View {
    //        HStack {
    //            Text("根据系统语言展示文本: \(id ?? "")")
    //            Text(NSLocalizedString("lang", comment: ""))
    //            Text("lang")
    //        }
    //    }
    
    
    // 避免使用硬编码
    var id: String? = ""
    enum Tranalation {
        static var lang: LocalizedStringKey {
            return "lang"
        }
    }
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("string:")
                // 都有效
                Text("lang")
            }
            
            HStack {
                Text("NSLocalizedString:")
                // 预览无效，模拟器、真机有效
                Text(NSLocalizedString("lang", comment: ""))
            }
            
            HStack {
                Text("enum:")
                Text(Tranalation.lang)
            }
        }.navigationBarTitle(Text("根据系统语言展示内容"))
    }
}

struct InternationalPage_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["en", "zh"], id: \.self) { id in
            International(id: id)
                .environment(\.locale, .init(identifier: id))
            
        }
        
    }
}
