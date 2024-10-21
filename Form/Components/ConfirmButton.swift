//
//  ConfirmButton.swift
//  Form
//
//  Created by Julia Morales on 21/10/24.
//

import SwiftUI

struct ConfirmButton: View {
    var body: some View {
        Button {
            print("Inscricao feita!")
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: UIScreen.main.bounds.width - 50, height: 48)
                .overlay {
                    HStack {
                        Text("Concluir inscrição")
                        Image(systemName: "arrow.right")
                    }
                    .foregroundStyle(.white)
                }
        }
    }
}
#Preview {
    ConfirmButton()
}
