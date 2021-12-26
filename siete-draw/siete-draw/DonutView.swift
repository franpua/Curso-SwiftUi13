//
//  DonutView.swift
//  siete-draw
//
//  Created by Francisco Gonzalez Rodriguez on 27/12/21.
//

import SwiftUI

struct DonutView: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0.0, to: 0.3)
                .stroke(Color.brown, lineWidth: 70)
                
                .overlay(Text("30%")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .offset(x: 87, y: 90)
                         )
            
            Circle()
                .trim(from: 0.3, to: 0.4)
                .stroke(Color.red, lineWidth: 60)
            
            Circle()
                .trim(from: 0.4, to: 0.8)
                .stroke(Color.yellow, lineWidth: 60)
            
            Circle()
                .trim(from: 0.8, to: 1.0)
                .stroke(Color.orange, lineWidth: 60)
                
                
        }.frame(width: 250, height: 250)
    }
}

struct DonutView_Previews: PreviewProvider {
    static var previews: some View {
        DonutView()
    }
}
