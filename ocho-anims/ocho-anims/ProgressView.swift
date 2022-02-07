//
//  ProgressView.swift
//  ocho-anims
//
//  Created by Francisco Gonzalez Rodriguez on 24/1/22.
//

import SwiftUI

struct ProgressView: View {
    
    @State private var progress: CGFloat = 0.0
    @State private var colorCircle = Color(.systemYellow)
    
        var body: some View {
            
            VStack{
        ZStack{
            Text("\(Int(progress*100)) %")
                .font(.system(.title, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGreen), lineWidth: 15)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(colorCircle, lineWidth: 15)
                .frame(width:150, height: 150)
                .rotationEffect(Angle.init(degrees: -60))
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        self.progress += 0.01
                        if self.progress > 1{
                            timer.invalidate()
                            self.colorCircle = Color(.systemBlue)
                        }
                    }
                }
        }
                
                
            }
      }
    }

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
