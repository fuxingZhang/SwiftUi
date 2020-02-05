//
//  TableViewPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI
fileprivate let Colors: [Color] = [.red, .blue, .black, .gray, .green, .yellow, .pink, .purple]
fileprivate let Symbols: [String] = """
0.circle
video
tv
z.square
zzz
""".split(separator: "\n").map({ String($0) })

struct TableViewPage: View {
    @State private var index = 0
    
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<Symbols.count) { item in
                TabItemPage(index: item)
                    .tabItem {
                        Image(systemName: Symbols[item])
                        Text("\(item)")
                }
            }
        }.navigationBarTitle("TabViewPage")
    }
}

fileprivate struct TabItemPage: View {
    var index: Int
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color.orange)
            VStack {
                Image("icon")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 50, design: .rounded))
                    .bold()
                Image(systemName: Symbols[index])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Colors.randomElement())
                    .background(Color.white)
                Slider(value: $scale, in: 1.0...10.0, step: 0.1)
                    .padding(.bottom, 100)
                Image(systemName: Symbols[index])
                    .scaleEffect(scale)
            }
        }
    }
}

struct TableViewPage_Previews: PreviewProvider {
    static var previews: some View {
        TableViewPage()
    }
}
