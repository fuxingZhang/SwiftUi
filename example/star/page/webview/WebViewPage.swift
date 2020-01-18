//
//  WebViewPage.swift
//  star
//
//  Created by 张复星 on 2020/1/17.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewPage: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://cn.bing.com")!)
        uiView.load(req)
    }
}

struct WebViewPage_Previews: PreviewProvider {
    static var previews: some View {
        WebViewPage()
    }
}
