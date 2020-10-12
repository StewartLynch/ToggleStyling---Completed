//
//  ContentView.swift
//  ToggleStyling
//
//  Created by Stewart Lynch on 2020-10-12.
//

import SwiftUI

struct ContentView: View {
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    @State private var toggle1: Bool = false
    @State private var toggle2: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $checkbox1){
                Text("Checkbox 1")
            }.toggleStyle(CheckboxToggleStyle())
            Toggle(isOn: $checkbox2){
                Text("Checkbox 2")
            }.toggleStyle(CheckboxToggleStyle(isReversed: true))
            Toggle(isOn: $toggle1){
                Text("Toggle Me")
            }.toggleStyle(CustomToggleStyle())
            Toggle(isOn: $toggle2){
                Text("Toggle Me2")
            }.toggleStyle(CustomToggleStyle(color: .blue))
        }.padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
