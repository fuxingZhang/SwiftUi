//
//  FormPage.swift
//  star
//
//  Created by 张复星 on 2020/2/5.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct FormPage: View {
    @State var firstName: String
    @State var lastName: String
    
    var body: some View {
        VStack {
            Form {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }
        }
        .navigationBarTitle(Text("Form"))
    }
}

struct FormPage_Previews: PreviewProvider {
    static var previews: some View {
        FormPage(firstName: "zhang", lastName: "fu xing")
    }
}
