//
//  ContentView.swift
//  ocho-anims
//
//  Created by Francisco Gonzalez Rodriguez on 30/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false

    
    var body: some View {
        ZStack{
        Circle()
            .frame(width: 180, height: 180)
            .foregroundColor(buttonColorChanged ? Color(.systemGray4) : Color(.systemGreen))
            
        Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(iconColorChanged ? Color(.systemGreen) : Color(.systemGray6))
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
        }
        //.animation(.spring(response: 1, dampingFraction: 0.4, blendDuration: 2), value: iconColorChanged)
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.2, blendDuration: 0.5)) {
                self.buttonColorChanged.toggle()
                self.iconColorChanged.toggle()
                
            }
            self.iconSizeChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
