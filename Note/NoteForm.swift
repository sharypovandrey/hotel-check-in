//
//  NoteForm.swift
//  Pre-check app
//
//  Created by Александр Волков on 12.05.2021.
//

import SwiftUI

struct NoteForm: View {
    @State private var request: String = ""    
    var body: some View {
//        TextArea("Enter your request", text: $request)
//            .frame(width: 334, height: 160)
//                            .font(.popupSubtitle)
//                            .padding(EdgeInsets(top: 148, leading: 40, bottom: 348, trailing: 40))
        ZStack() {
            if request.isEmpty {
                HStack {
                    TextView(font: .popupSubtitle, color: .lightGrayColor, text: .requestPlaceholder)
                        .padding(EdgeInsets(top: 158, leading: 50, bottom: 472, trailing: 203))
                    Spacer()
                }
            }

            TextEditor(text: $request)
                .frame(width: 334, height: 160)
                .font(.popupSubtitle)
                .padding(EdgeInsets(top: 148, leading: 40, bottom: 348, trailing: 40))
                .opacity(request.isEmpty ? 0.25 : 1)
        }
    }
}

struct NoteForm_Previews: PreviewProvider {
    static var previews: some View {
        NoteForm()
    }
}
