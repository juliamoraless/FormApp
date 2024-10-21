//
//  ImportingExampleView.swift
//  Form
//
//  Created by Julia Morales on 21/10/24.
//

import SwiftUI

struct UploadButton: View {
    @State private var importing = false
    
    var body: some View {
        Button {
            importing = true
        } label: {
            Image(systemName: "paperclip")
                .font(.system(size: 24))
        }
        .fileImporter(
            isPresented: $importing,
            allowedContentTypes: [.plainText]
        ) { result in
            switch result {
            case .success(let file):
                print(file.absoluteString)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    UploadButton()
}
