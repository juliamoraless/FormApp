//
//  DateView.swift
//  Form
//
//  Created by Julia Morales on 18/10/24.
//

import SwiftUI

struct DatePickerView: View {
    @Binding var date: Date
    
    var body: some View {
        DatePicker(selection: $date, displayedComponents: .date) {
            Text("Data de nascimento:")
        }
            .bold()
            .padding()
            .tint(.brown)
        Divider()
    }
}

//#Preview {
//    DatePickerView(date: )
//}
