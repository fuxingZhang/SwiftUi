//
//  DatePickerPage2.swift
//  star
//
//  Created by 张复星 on 2020/2/3.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI
import Combine

struct DatePickerPage2: View {
    var dateFormatter = DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            Text("select a future date").font(.largeTitle)
            DatePicker(selection: $selectedDate, in: ...Date(), displayedComponents: .date) {
                Text("")
            }.padding(30)
            Text("selected Date is \(selectedDate, formatter: dateFormatter)").font(.title)
        }
    }
}

struct DatePickerPage2_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerPage2()
    }
}
