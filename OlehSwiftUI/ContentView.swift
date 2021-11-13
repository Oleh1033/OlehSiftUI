//
//  ContentView.swift
//  OlehSwiftUI
//
//  Created by Oleh Boburchak on 13/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false
    
    var body: some View {
        Button(action: {
            self.isError = true
        }, label: {
            Text("Button")
        }).alert(isPresented: $isError, content: {
            Alert(title: Text("test"))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
