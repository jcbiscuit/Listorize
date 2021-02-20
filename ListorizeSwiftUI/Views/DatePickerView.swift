//
//  DatePickerView.swift
//  ListorizeSwiftUI
//
//  Created by Jody Clelland on 20/2/21.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var currentDate = Date()
    var body: some View {
        DatePicker("Current Date", selection: $currentDate, in: Date()..., displayedComponents: .date)
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
