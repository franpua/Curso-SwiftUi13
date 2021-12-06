//
//  ContentView.swift
//  cinco-buttons
//
//  Created by Francisco Gonzalez Rodriguez on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /*Button {
                print("Botón hola pulsado")
            } label: {
                Text("¡Hola Mundo!")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .padding()
                
                    .background(Color("Verde oscuro"))
                    .foregroundColor(.yellow)
                    .cornerRadius(15)
                    //.border(Color.yellow, width: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.yellow, lineWidth: 5)
                    )
                    
        }*/
            Button {
                print("Botón con icono editar pulsado")
            } label: {
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("Editar")
                        
                }
                
            }.buttonStyle(BasicButtonStyle())
            
            Button {
                print("Botón con icono eliminar pulsado")
            } label: {
                HStack {
                    Image(systemName: "trash")
                    Text("Eliminar")
                        
                }
                
            }.buttonStyle(BasicButtonStyle())
            
            Button {
                print("Botón con icono compartir pulsado")
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                        
                }
                
            }.buttonStyle(BasicButtonStyle())

            Button {
                print("Botón papelera pulsado")
            } label: {
                Image(systemName: "trash")
                
            }.buttonStyle(trashButtonStyle())

            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth:0, maxWidth: .infinity)
            .padding()
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(.white)
            //.background(Color(red: 90/255, green: 90/255, blue: 90/255))
            //.clipShape(Circle())
            //.background(LinearGradient(gradient: Gradient(colors: [.purple, .gray]), startPoint: .top, endPoint: .bottom))
            .background(LinearGradient(colors: [Color("Combi 1"), Color("Combi 2"), Color("Combi 3")], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(45)
            .shadow(color: .init(red: 153/255, green: 153/255, blue: 0/255), radius: 20.0, x: 20, y: 10)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
            //.rotationEffect(Angle(degrees: 90.0)) //ROTAR ALGO 90 GRADOS.
            //.rotationEffect(configuration.isPressed ? (Angle(degrees: 90.0)) : (Angle(degrees: 0.0)))
    }
}

struct trashButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding()
        .font(.largeTitle)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotationEffect(configuration.isPressed ? Angle(degrees: 90.0) : Angle(degrees: 0.0))
        
    }
}
