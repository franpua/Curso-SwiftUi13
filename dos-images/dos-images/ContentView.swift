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
            .resizable() // Se escala a toda la pantalla
            //.edgesIgnoringSafeArea(.all) // ignora toda el area segura
            .scaledToFit() //escala tamaño original para que no se deforme la imagen
            .aspectRatio( contentMode: .fill) //no se deforma pero recorta la imagen y slo usa la que entra en la pantalla
            .frame(width: 350) //escoje el ancho que quiero para la imagen
            //.clipped()  // Quitar el sobrante
            //.clipShape(Circle())  //recorta con la forma que le indicamos
            .clipShape(Capsule())
            .opacity(0.6) // opacidad - en 0 es invisible y en 1 se ve todo
            .overlay(/*Image(systemName: "heart.fill")) //Capa por encima de una imagen - nos pone un corazón por encima de la imagen.
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
