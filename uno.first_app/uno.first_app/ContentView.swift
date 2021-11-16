//
//  ContentView.swift
//  uno.first_app
//
//  Created by Francisco Gonzalez Rodriguez on 17/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hola Mundo")
            .fontWeight(.bold)
            //.font(.title)
            //.font(.body)
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(.blue)
            //.font(.custom("Helvetica neue", size: 25))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
