//
//  progressIndicator.swift
//  siete-draw
//
//  Created by Francisco Gonzalez Rodriguez on 26/12/21.
//

import SwiftUI

struct progressIndicator: View {
    
    private var trackGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 50/255, green: 150/255, blue: 230/255), Color(red: 70/255, green: 180/255, blue: 240/255)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 10)
                .frame(width:200, height: 200)
            
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(trackGradient, lineWidth: 20)
                .frame(width:200, height: 200)
                .overlay(VStack{
                    Text("65 %")
                        .font(.system(size: 50, design: .rounded)).fontWeight(.bold)
                    Text("Número de pasos")
                        .font(.system(.body, design: .rounded))
                        .bold().foregroundColor(Color(.systemTeal))
                })
        }
    }
}

struct progressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        progressIndicator()
    }
}
