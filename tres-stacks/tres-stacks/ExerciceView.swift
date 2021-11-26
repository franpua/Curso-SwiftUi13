//
//  ExerciceView.swift
//  tres-stacks
//
//  Created by Francisco Gonzalez Rodriguez on 26/11/21.
//

import SwiftUI

struct ExerciceView: View {
    var body: some View {
        VStack{
            Header1View()

            
                Pricing1View(title: "Plan Básico", subtitle: "Un curso incluido", price: "9,99", textColor: .white, backgroundColor: .green, icon: "star")
                .padding(.horizontal)
            
                ZStack {
                Pricing1View(title: "Plan carrera", subtitle: "Una carrera completa", price: "29,99", textColor: .black, backgroundColor: Color(red: 200/255, green: 200/255, blue: 200/255), icon: "timer")
                    
                    Text("El mejor para empezar")
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .padding(6)
                        .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                        .cornerRadius(50)
                        .offset(x: 0, y: -80)
                }
            
            .padding(.all)
            .offset(x: 0, y: -80)
            
            ZStack{
            
                Pricing1View(title: "Definitivo", subtitle: "Todos los cursos online", price: "99.99", textColor: .white, backgroundColor:Color(red: 95/255, green: 95/255, blue: 95/255), icon: "lightbulb")
                
                    .padding(.horizontal)
                
                Text("Conviértete en un máster del Universo")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                    .padding(6)
                    .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                    .cornerRadius(50)
                    .offset(x: 0, y: -80)
                
                    .padding(.horizontal)
                
            }.padding(.vertical)
                .offset(x: 0, y: -180)
            Spacer()
        }
    }
}

struct ExerciceView_Previews: PreviewProvider {
    static var previews: some View {
        
        ExerciceView()
    }
}

struct Header1View: View {
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

struct Pricing1View: View {
    
    var title: String
    var subtitle: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    
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
            
        }
    }
}
