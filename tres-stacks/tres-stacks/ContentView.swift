//
//  ContentView.swift
//  tres-stacks
//
//  Created by Francisco Gonzalez Rodriguez on 20/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            
            
            HStack(spacing:10) {
                PricingView(title: "Plan Básico", subtitle: "Un curso incluido", price: "9,99", textColor: .white, backgroundColor: .green)
            
                ZStack {
                PricingView(title: "Plan carrera", subtitle: "Una carrera completa", price: "29,99", textColor: .black, backgroundColor: Color(red: 200/255, green: 200/255, blue: 200/255), text: "El mejor para empezar")
                    
                
                        
                }
            }
            .padding(.all)
            
            ZStack{
            
                PricingView(title: "Definitivo", subtitle: "Todos los cursos online", price: "99.99", textColor: .white, backgroundColor:Color(red: 95/255, green: 95/255, blue: 95/255), icon: "lightbulb", text: "Conviértete en un máster del Universo")
                    .padding(.horizontal)
                
            }.padding(.vertical)
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 3){
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                Text("de aprendizaje")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
            }.padding()
            Spacer()
        }
        
    }
}

struct PricingView: View {
    
    var title: String
    var subtitle: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    var text: String?
    
    var body: some View {
        ZStack {
            
            
            VStack{
                
                icon.map({
                    Image(systemName: $0) //$0 = icon
                        .font(.largeTitle)
                        .foregroundColor(.white)
                })


                Text(title)
                    .font(.system(size: 25, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(textColor)
                
                
                Text(price)
                    .font(.system(size: 35, weight:.heavy, design: .rounded))
                    .foregroundColor(textColor)
                
                Text(subtitle)
                    .font(.system(size: 14))
                    .foregroundColor(textColor)
                
            }
            .frame(minWidth: 0, idealWidth: .infinity, maxWidth: 120)
            .padding()
            .background(backgroundColor)
            .cornerRadius(15)
            
            text.map({
                Text($0)
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding(6)
                    .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                    .cornerRadius(50)
                    .offset(x: 0, y: -80)
                
            })
            
            
            
        }
    }
}
