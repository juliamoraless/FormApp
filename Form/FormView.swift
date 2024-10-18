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
                    Text("Os campos com * são de preenchimento obrigatório.")
                }
                .font(.footnote)
                .fontWeight(.thin)
                .foregroundStyle(Color(.darkGray))
                VStack {
                    InputView(text: "", title: "Nome completo:", placeholder: "")
                    InputView(text: "", title: "CPF:", placeholder: "000.000.000-00")
                    InputView(text: "", title: "Email:", placeholder: "exemplo@gmail.com")
                    DatePickerView(date: $date)
                    InputView(text: "", title: "Anexo RG:", placeholder: "")
                    Spacer()
                }
            }
            .navigationTitle("Inscreva-se ✨")
            .background(Color.white)
        }
    }
}

#Preview {
    FormView()
}
