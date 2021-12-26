//
//  pieView.swift
//  siete-draw
//
//  Created by Francisco Gonzalez Rodriguez on 12/12/21.
//

import SwiftUI

struct pieView: View {
    var body: some View {
        ZStack {
            // Quesito superior
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 180), clockwise: true)
            }
            .fill(Color.orange)
            // Quesito gris izquierdo
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 150, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 140), clockwise: true)
            }
            .fill(Color(UIColor.systemGray))
            // Quesito inferior destacado
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 150, startAngle: Angle(degrees: 140), endAngle: Angle(degrees: 60), clockwise: true)
            }
            .fill(Color(UIColor.systemRed))
            .offset(x: -2 , y: 10 )
            
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 150, startAngle: Angle(degrees: 140), endAngle: Angle(degrees: 60), clockwise: true)
                path.closeSubpath()
            }
            .stroke(Color.blue,lineWidth: 5)
            .offset(x: -2 , y: 10 )
            .overlay((Text("22 %"))
                        .font(.system(.title, design:.rounded))
                        .bold()
                        .offset(x: -10, y:  -20)
            
            
            )
            // Quesito verde derecho
            Path(){path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 150, startAngle: Angle(degrees: 60), endAngle: Angle(degrees: 0), clockwise: true)
            }
            .fill(Color(UIColor.systemGreen))
        }
    }
}

struct pieView_Previews: PreviewProvider {
    static var previews: some View {
        pieView()
    }
}
