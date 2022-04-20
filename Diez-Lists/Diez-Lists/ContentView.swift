//
//  ContentView.swift
//  Diez-Lists
//
//  Created by Francisco Gonzalez Rodriguez on 7/2/22.
//

import SwiftUI



struct ContentView: View {
    

    
    var deportivas = [Deportiva(name: "Aprilia RSV 1000 Factory", image: "Aprilia"),
                      Deportiva(name: "BMW S1000RR", image: "BMW"),
                      Deportiva(name: "Ducati panigale", image: "Ducati"),
                      Deportiva(name: "Honda CBR1000RR", image: "Honda", feature: true),
                      Deportiva(name: "Kawasaki 1000", image: "Kawasaki"),
                      Deportiva(name: "KTM RC8", image: "KTM", feature: true),
                      Deportiva(name: "Suzuki 1000", image: "Suzuki"),
                      Deportiva(name: "Yamaha R1 60 Aniversario", image: "Yamaha")]
    
    var body: some View {
        
        List(deportivas.indices) {indice in
            if self.deportivas[indice].feature{
                fullRowMotorBike(deportiva: self.deportivas[indice])
            }else{
                rowMotorBike(deportiva: self.deportivas[indice])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Deportiva: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false //esto para finalizar sería para destacar una fila en concreto con la vista grande. A la que queramos destacar le pasamos arriba el parámetro en el array y en la lista hacemos un if. Eso sí, en este caso como en la nueva estructura no tenemos identifcador tendríamos que cambiarlo de nuevo por un deportivas.indices (se pone indices por es plural) y cambiamos de nombre el parámetro antes del in por por ej: indice
}

struct rowMotorBike: View {
    
    var deportiva: Deportiva
    
    var body: some View {
        HStack {
            Image(deportiva.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipped()
                .cornerRadius(25)
            
            
            
            Text(deportiva.name)
                .font(.system(.title3, design: .rounded).bold())
        }
    }
}
struct fullRowMotorBike: View{

    var deportiva: Deportiva
    
    var body: some View{
        ZStack{
            
            Image(deportiva.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:250)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(.systemGray))
                            .opacity(0.4)
                
                )
                
            
            Text(deportiva.name)
                .font(.system(.title2, design: .rounded).bold())
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
        }
    }
}
