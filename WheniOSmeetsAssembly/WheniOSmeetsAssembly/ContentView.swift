//
//  ContentView.swift
//  WheniOSmeetsAssembly
//
//  Created by Juan Manuel Moreno on 18/10/24.
//

import SwiftUI

enum Werror: Error {
    case KO
}

struct ContentView: View {
    
    @State private var numberInChristian = ""
    
    func doInAssembly() throws {
        guard let num = Int(numberInChristian) else {
            throw Werror.KO
        }
        let cint = CInt(num)
        let inBinary = perform(cint)
        print("inBinary is \(String(inBinary, radix: 2)) in 1-bits is \(inBinary)")
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Assembly!")
            TextEditor(text: $numberInChristian)
                .onChange(of: numberInChristian) {
                    do {
                        try doInAssembly()
                    } catch{
                        
                    }
                    
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
