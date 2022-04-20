//
//  ContentView.swift
//  dos-images
//
//  Created by Francisco Gonzalez Rodriguez on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("bull")
            .resizable()
            //.edgesIgnoringSafeArea(.all)
            .scaledToFit()
            .aspectRatio( contentMode: .fill)
            .frame(width: 350)
            //.clipped()
            //.clipShape(Circle())
            .clipShape(Capsule())
            .opacity(0.6)
            .overlay(/*Image(systemName: "heart.fill"))
            .font(.system(size: 50))
            .foregroundColor(.pink)
            .opacity(0.5)*/
            /*Text("El toro en Wall Street simboliza a los alcistas, es decir, a los compradores")
                        .foregroundColor(.red)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .background(Color.gray)
                        .cornerRadius(12)
                        .opacity(0.6)
                        .padding(5),
                     alignment: .top
            )*/
            Capsule()
                .foregroundColor(.black)
                .opacity(0.4)
                .overlay(Text("El toro de Wall Street")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.yellow)
                            .frame(width: 350)
                         
                            
                        
                )
            )
            
            
                     
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
