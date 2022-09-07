//
//  ContentView.swift
//  Shared
//
//  Created by Luis Smith on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: cipher2Document

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(cipher2Document()))
    }
}
