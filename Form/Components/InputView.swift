//
//  InputView.swift
//  Form
//
//  Created by Julia Morales on 18/10/24.
//

import SwiftUI

struct InputView: View {
    @State var text: String
    let title: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            TextField(placeholder, text: $text)
            Divider()
        }
        .padding()
    }
}

#Preview {
    InputView(text: "", title: "Nome", placeholder: "Insira seu nome")
}
