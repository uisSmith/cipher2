//
//  cipher2Document.swift
//  Shared
//
//  Created by Luis Smith on 07/09/2022.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleText: UTType {
        UTType(importedAs: "com.example.plain-text")
    }
}

struct cipher2Document: FileDocument {
    var text: String

    init(text: String = "Hello, world!") {
        self.text = text
    }
    
    func cipher( text:String, shift:Int ) -> String {
        return ""   
    }
    
    func decipher( text:String, shift:Int ) -> String {
        return ""
    }

    static var readableContentTypes: [UTType] { [.exampleText] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
