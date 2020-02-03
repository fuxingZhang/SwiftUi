//
//  DatePickerPage.swift
//  star
//
//  Created by 张复星 on 2020/2/3.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI
import Combine

struct DatePickerPage: View {
    @ObservedObject var server = DateServer()
    var speaceDate: Range<Date>?
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text("date select").bold()
                DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date, label: {
                    Text("select a date")
                })
            }
            .padding(.top)
            .navigationBarTitle(Text("DatePicker"))
        }
    }
}

class DateServer: ObservableObject {
    var didChange = PassthroughSubject<DateServer, Never>()
    var date: Date = Date() {
        didSet {
            didChange.send(self)
            print("Date Changed: \(date)")
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyy-MM-dd HH:mm:ss"
            let localDate = dateFormatter.string(from: date)
            print("date local: \(localDate)")
        }
    }
    var spaceDate: ClosedRange<Date> {
        let soon = Calendar.current.date(byAdding: .year, value: -1, to: date) ?? Date()
        let later = Calendar.current.date(byAdding: .year, value: 1, to: date) ?? Date()
        let speaceDate = soon...later
        return speaceDate
    }
}

struct DatePickerPage_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerPage()
    }
}
