//
//  PaymentView.swift
//  ocho-anims
//
//  Created by Francisco Gonzalez Rodriguez on 29/1/22.
//

import SwiftUI

enum Payment {
case Welcome, procesing, finalized
}

struct PaymentView: View {
    
    @State private var progress : CGFloat = 0.0
    @State private var isMoving = false
    @State  var step: Payment = .Welcome
    
    var body: some View {
        
        switch step {
        case .Welcome:
            VStack {
                let mano = Image(systemName: "hand.point.down.fill")
                
                    Text("Haz clic aquí \(mano) para pagar")
                    .font(.title2)
              
                HStack{
                    Image(systemName: "applelogo")
                        . font(.system(size: 40))
                    
                    Text("Pay")
                        .font(.system(size: 50))
                }
                .onTapGesture {
                    withAnimation {
                        step = .procesing
                    }
                }
                .frame(width: 250, height: 80)
                //.padding(.maximum(20, 0))
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(lineWidth: 10)
                )
                
    }
        case .procesing:
            VStack{
                Text("Cargando...")
                    .font(.system(.title, design: .rounded).bold())
                ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 15)
                    .frame(width:300, height: 8)
                    
                RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.white), lineWidth: 15)
                        .frame(width: 50, height: 8)
                        .offset(x: isMoving ? 125 : -125)
                        .animation(Animation.linear(duration: 2).repeatForever(autoreverses: true), value: isMoving)
                        .onAppear {
                            self.isMoving = true
                            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                                if self.progress > 1{
                                    self.isMoving = false
                                    
                                }
                                timer.invalidate()
                                step = .finalized
                            }
                        }
            }
        }
        case .finalized:
            VStack{
                Text("Pago completado")
                    .font(.system(.title, design: .rounded).bold())
                Image(systemName: "checkmark.circle")
                    .font(.system(.largeTitle).bold())
                    .transition(AnyTransition.scale.animation(Animation.easeOut))
                    
                    }.onTapGesture {
                        step = .Welcome
                }
        }
        
        
        
        
    }


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}


}
