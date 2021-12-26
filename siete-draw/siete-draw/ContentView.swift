//
//  ContentView.swift
//  siete-draw
//
//  Created by Francisco Gonzalez Rodriguez on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                ZStack{
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 130))
                    path.addLine(to: CGPoint(x:130, y: 130))
                    path.addLine(to: CGPoint(x:130, y: 150))
                    path.addLine(to: CGPoint(x:50, y: 150))
                    path.addLine(to: CGPoint(x:50, y: 170))
                    path.addLine(to: CGPoint(x:100, y: 170))
                    path.addLine(to: CGPoint(x:100, y: 190))
                    path.addLine(to: CGPoint(x:50, y: 190))
                    path.addLine(to: CGPoint(x:50, y: 250))
                    path.addLine(to: CGPoint(x:30, y: 250))
                    //path.addLine(to: CGPoint(x:30, y: 30))
                    path.closeSubpath()
                }
                
                .stroke(Color.blue, lineWidth: 10 )
                    
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 130))
                    path.addLine(to: CGPoint(x:130, y: 130))
                    path.addLine(to: CGPoint(x:130, y: 150))
                    path.addLine(to: CGPoint(x:50, y: 150))
                    path.addLine(to: CGPoint(x:50, y: 170))
                    path.addLine(to: CGPoint(x:100, y: 170))
                    path.addLine(to: CGPoint(x:100, y: 190))
                    path.addLine(to: CGPoint(x:50, y: 190))
                    path.addLine(to: CGPoint(x:50, y: 250))
                    path.addLine(to: CGPoint(x:30, y: 250))
                    //path.addLine(to: CGPoint(x:30, y: 30))
                    path.closeSubpath()
                    }
                    .fill(Color.orange)
            }
                Path(){ path in
                    path.move(to: CGPoint(x: 30, y: 130))
                    path.addQuadCurve(to: CGPoint(x: 130, y: 130), control: CGPoint(x: 80, y: 70))

                    path.addLine(to: CGPoint(x:130, y: 130))
                    path.addLine(to: CGPoint(x:130, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 50, y: 150), control: CGPoint(x: 85, y: 110))
                    path.addLine(to: CGPoint(x:50, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 50, y: 230), control: CGPoint(x: 20, y: 190))
                    path.addLine(to: CGPoint(x:50, y: 230))
                    path.addQuadCurve(to: CGPoint(x: 110, y: 230), control: CGPoint(x: 85, y: 270))

                    path.addLine(to: CGPoint(x:110, y: 230))
                    path.addLine(to: CGPoint(x:110, y: 200))
                    path.addLine(to: CGPoint(x:80, y: 200))
                    path.addLine(to: CGPoint(x:80, y: 180))
                    path.addLine(to: CGPoint(x:130, y: 180))
                    //path.addQuadCurve(to: CGPoint(x: 30, y: 200), control: CGPoint(x: 80, y: 300))
                    path.addLine(to: CGPoint(x:130, y: 250))
                    path.addQuadCurve(to: CGPoint(x: 30, y: 250), control: CGPoint(x: 80, y: 310))
                    path.addLine(to: CGPoint(x:30, y: 250))
                    //path.addQuadCurve(to: CGPoint(x: 30, y: 250), control: CGPoint(x: 80, y: 300))

                    path.closeSubpath()
                    path.addQuadCurve(to: CGPoint(x: 30, y: 250), control: CGPoint(x: -10, y: 190))

                }
                //.fill(Color.orange)
                .stroke(Color.blue, lineWidth: 5)
            }
            
            /*Path(){ path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
            }*/
            Text("Prueba")
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .frame(width: 250, height: 150)
                .background(FunnyLabel(perCircle: 0.8).fill(Color.orange))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FunnyLabel: Shape {
    var perCircle = 1.0
    
    func path(in rect: CGRect) -> Path {
        var path =  Path()
        
        path.move(to: CGPoint(x: rect.size.width * (1 - perCircle)/2, y: 0))
        path.addQuadCurve(to: CGPoint(x: (rect.size.width * (1 - (1 - perCircle)/2)), y: 0), control: CGPoint(x: rect.size.width/2, y: rect.size.width*(-0.5)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}
