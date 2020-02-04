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
    @EnvironmentObject var userData: UserData
    @State var language = "en"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // real: en_US, zh_CN, emulator: en_US, zh_Hans_US
            HStack(alignment: .top, spacing: 20) {
                Spacer()
                Text("NSLocale.current.identifier")
                Text(NSLocale.current.identifier)
            }
            .foregroundColor(.red)
            .background(Color.white)
            
            HStack(alignment: .top, spacing: 20) {
                Text("string:")
                // 都有效
                Text("lang")
                Spacer()
            }
            .padding(10)
            .background(Color.white)
            
            HStack {
                Text("NSLocalizedString:")
                Spacer()
                // 预览无效，模拟器、真机有效
                Text(NSLocalizedString("lang", comment: ""))
            }
            .background(Color.white)
            
            // en, zh
            HStack {
                Text("Locale.current.languageCode:")
                Spacer()
                Text(Locale.current.languageCode ?? "")
            }
            .background(Color.white)
            
            HStack {
                Text("Locale.current.identifier:")
                Spacer()
                Text(Locale.current.identifier)
            }
            .background(Color.white)
            
            HStack {
                Spacer()
                Text("enum:")
                Spacer()
                Text(Tranalation.lang)
                Spacer()
            }
            .background(Color.white)
            
            HStack(alignment: .top, spacing: 20) {
                Spacer()
                Text("userData language:")
                Text(userData.language)
                Spacer()
            }
            .foregroundColor(.red)
            .background(Color.white)
            
            HStack() {
                Spacer()
                Button(action: {
                    print("get current running application language:", Bundle.main.preferredLocalizations.first!)
                    print(Bundle.main.preferredLocalizations.first ?? "") // "zh-Hans
                    print(Bundle.main.preferredLocalizations.first  == "zh-Hans") // true
                    print("Locale.current: ", Locale.current) //zh-Hans_US (current)
                    print(type(of: Locale.current)) // Locale
                    print(Locale.preferredLanguages) // ["zh-Hans-US", "en-US", "en"]
                    print("original: \(self.language)")
                    self.language = self.language.hasPrefix("en") ? "zh" : "en"
                    print("now: \(self.language)")
                    self.userData.language = self.userData.language == "en" ? "zh" : "en"
                }) {
                    //                                Spacer()
                    Text("toggle userData language")
                        .bold()
                        .font(.system(size: 24, design: .rounded))
                        .shadow(radius: 1)
                    //                                Spacer()
                }
                Spacer()
            }
            
            HStack(alignment: .top, spacing: 20) {
                Button(action: {
                    UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                }) {
                    Spacer()
                    Text("change system language")
                        .bold()
                        .font(.system(size: 24, design: .rounded))
                        .shadow(radius: 1)
                    Spacer()
                }
            }
            .foregroundColor(.red)
            .background(Color.white)
            
            Spacer()
        }
            //            .frame(width: 350, height: 260)
            .padding(30)
            .background(Color.orange)
            .cornerRadius(8)
            .shadow(radius: 5)
            .navigationBarTitle(Text("根据系统语言展示内容"))
    }
}

struct InternationalPage_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["en", "zh"], id: \.self) { id in
            International(id: id)
                .environment(\.locale, .init(identifier: id))
                .environmentObject(UserData())
        }
    }
}
