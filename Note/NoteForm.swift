//
//  NoteForm.swift
//  Pre-check app
//
//  Created by Александр Волков on 12.05.2021.
//

import SwiftUI

struct NoteForm: View {
    @State private var request: String = ""
//    @State var text: String = "Multiline \ntext \nis called \nTextEditor"

    var body: some View {
        TextEditor(text: $request)
            .frame(width: 334, height: 160)
            .font(.popupSubtitle)
            .padding(EdgeInsets(top: 130, leading: 40, bottom: 466, trailing: 40))
        Text(request).opacity(0).padding(.all, 8) // <- This will solve the issue if it is in the same ZStack


//        TextFieldView(story: .note, placeHolder: "Enter your request",  inputedText: $request)
//            .padding(EdgeInsets(top: 130, leading: 40, bottom: 466, trailing: 40))

    }
}

struct NoteForm_Previews: PreviewProvider {
    static var previews: some View {
        NoteForm()
    }
}
