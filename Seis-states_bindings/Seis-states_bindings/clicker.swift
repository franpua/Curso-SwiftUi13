//
//  clicker.swift
//  Seis-states_bindings
//
//  Created by Francisco Gonzalez Rodriguez on 6/12/21.
//

import SwiftUI

struct clicker: View {
    
   @State private var accountant = 0
    
    var body: some View {
        
        VStack{
            Spacer()

        Button {
            //self.accountant = 0
        } label: {
            /* Text("\(accountant)")
                .padding()
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .foregroundColor(Color(red: 129/255, green: 255/255, blue: 3/255))
                .padding(50)
                .background(Color.black)
                .clipShape(Circle())*/  //Hecho por mi...y lo de debajo es como lo hizo Juan Gabriel
                
                Circle()
                .frame(width:180, height: 180)
                .foregroundColor(.black)
                .overlay(Text("\(accountant)")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(red: 129/255, green: 255/255, blue: 3/255))
                )
                
                
        }
            HStack{
            
        Button {
            self.accountant -= 1
        } label: {
           
        }.buttonStyle(plusMineButtonStyle(plusmine: "-"))
        
        Button {
            self.accountant += 1

        } label: {
           
        }.buttonStyle(plusMineButtonStyle(plusmine: "+"))
            }.padding()
            Spacer()
        
        Button {
            self.accountant = 0
        } label: {
            
            HStack{
            Image(systemName: "trash")
                    .foregroundColor(.white)
                    .font(.title)
            Text("Borrar Contador")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    
            
            }
            
        }.buttonStyle(trashButtonStyle())
        
    }

    }
}

struct clicker_Previews: PreviewProvider {
    static var previews: some View {
        clicker()
    }
}

struct plusMineButtonStyle: ButtonStyle{
    
    var plusmine: String
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        Rectangle()
            .frame(width: 150, height: 100)
            .foregroundColor(Color(red: 129/255, green: 255/255, blue: 3/255))
            .overlay(Text(plusmine))
            .font(.system(size: 50, weight: .black, design: .rounded))
            .foregroundColor(.black)
            .cornerRadius(50)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

struct trashButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding(.maximum(0, 15))
        .background(.red)
        .cornerRadius(50)
        .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}
