//
//  ContentView.swift
//  AppMotoGp2022
//
//  Created by Francisco Gonzalez Rodriguez on 12/2/22.
//

import SwiftUI

struct ContentView: View {
    
    var pilotos = [Piloto(name: "Andrea Dovicioso", image: "04_Andrea-Dovizioso"),
                   Piloto(name: "Luca Marini", image: "10_Luca_Marini")]
    
    var body: some View {
        List(pilotos.indices){pilot in
            RowPilot(pilot: pilotos[pilot])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Piloto: Identifiable{
    var id = UUID()
    var name: String
    var image: String
}

struct RowPilot: View {
    
    var pilot: Piloto
    
    var body: some View {
        VStack{
            Image(pilot.image)
                .resizable()
                .padding()
                .frame(width: 200, height: 300)
                .aspectRatio(contentMode: .fill)
                .background(Color(.systemGray))//; (midleShape(perCicle: 0.8).fill(Color.black))
                .cornerRadius(250)
                //.clipShape(Capsule())
                /*.overlay(RoundedRectangle(cornerRadius: 250)
                            .opacity(0.1)
                            .background(midleShape(perCicle: 1.0).fill(Color.green))
                )*/
                
                
            Text(pilot.name)
                .font(.system(.title2, design: .rounded).bold())
                
        }.padding(50)
        //.background(Color(.systemOrange))
            .cornerRadius(25)
    }
}
/*struct midleShape: Shape {
    
    var perCicle: CGFloat = 1.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width * (1 - perCicle)/2, y:210))
        path.addQuadCurve(to: CGPoint(x: (rect.size.width * (1 - (1 - perCicle)/2)), y:210), control: CGPoint(x:  rect.size.width/2, y: rect.size.width*(2.0)))
        path.addRect(CGRect(x: 0, y: 150, width: rect.size.width, height: 60))
        
        return path
    }
    
}*/

