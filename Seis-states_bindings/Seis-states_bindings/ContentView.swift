//
//  ContentView.swift
//  Seis-states_bindings
//
//  Created by Francisco Gonzalez Rodriguez on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false
    
    var body: some View {
        Button {
            self.isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 100))
                .foregroundColor(isPlaying ? .red : .blue)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
