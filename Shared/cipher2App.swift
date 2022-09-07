//
//  cipher2App.swift
//  Shared
//
//  Created by Luis Smith on 07/09/2022.
//

import SwiftUI

@main
struct cipher2App: App {
    var body: some Scene {
        DocumentGroup(newDocument: cipher2Document()) { file in
            ContentView(document: file.$document)
        }
    }
}
