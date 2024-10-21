//
//  ContentView.swift
//  Form
//
//  Created by Julia Morales on 17/10/24.
//

import SwiftUI

struct FormView: View {
    @State private var nome: String = ""
    @State private var cpf: String = ""
    @State private var date = Date()
    var body: some View {
        NavigationStack {
            VStack (spacing: 25){
                VStack(alignment: .leading) {
                    Text("Preencha os campos abaixo com atenção.")
                    Text("Informações e anexos errados podem invalidar sua inscrição.")
                }
                .font(.footnote)
                .fontWeight(.thin)
                .foregroundStyle(Color(.darkGray))
                VStack(alignment: .leading) {
                    InputView(text: "", title: "Nome completo:", placeholder: "Insira seu nome")
                    InputView(text: "", title: "CPF:", placeholder: "000.000.000-00")
                    InputView(text: "", title: "Email:", placeholder: "exemplo@gmail.com")
                    DatePickerView(date: $date)
                        .padding(.bottom, 10)
                    HStack {
                        Text("Anexo:")
                            .bold()
                        Text("(Nome do arquivo)")
                        Spacer()
                        UploadButton()
                    }
                    .padding()
                    Spacer()
                }
                ConfirmButton()
                Spacer()
            }
            .navigationTitle("Inscreva-se ✨")
            .background(Color.white)
        }
    }
}

#Preview {
    FormView()
}
