//
//  LoadingView.swift
//  ocho-anims
//
//  Created by Francisco Gonzalez Rodriguez on 21/1/22.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = false
    @State private var isMoving = false
    
    var body: some View {
        
        VStack{
        ZStack{
        Circle()
                .stroke(Color(.systemGray4), lineWidth: 20)
                .frame(width:150, height: 150)
        Circle()
            .trim(from: 0.0, to: 0.60)
            .stroke(Color.green, lineWidth: 20)
            .frame(width: 150, height: 150)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false), value: isLoading)
            .onAppear {
                isLoading = true
                
            }
        }
        Text("Cargando")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
            ZStack{
        RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemGreen), lineWidth: 20)
                .frame(width:350, height: 8)
        RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemYellow), lineWidth: 20)
                .frame(width:50, height: 8)
                .offset(x: isMoving ? 150 : -150)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: isMoving)
                .onAppear {
                    self.isMoving = true
                }
            }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
}
