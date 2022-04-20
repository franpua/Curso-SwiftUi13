//
//  binding.swift
//  Seis-states_bindings
//
//  Created by Francisco Gonzalez Rodriguez on 7/12/21.
//

import SwiftUI

struct Vinculo: View {
    
    @State private var contador = 0
    //@State private var contadorParcial = 0
    @State private var black = 0
    @State private var red = 0
    @State private var blue = 0
    
    
    var body: some View {
        VStack{
            Text("\(black + red + blue)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
            
            CounterView(contador: $black, colorButton: .black)
            CounterView(contador: $red, colorButton: .red)
            CounterView(contador: $blue, colorButton: .blue)
            
            Papelera(contador: $contador, black: $black, red: $red, blue: $blue)
            
            
          
        }

    }
}

struct binding_Previews: PreviewProvider {
    static var previews: some View {
        Vinculo()
    }
}

struct CounterView: View {
    
    @Binding var contador: Int
    //@State var contadorParcial = 0
    
    var colorButton: Color
    
    var body: some View {
        Button {
            //self.contadorParcial += 1
            self.contador += 1
        } label: {
            /* Text("\(accountant)")
             .padding()
             .font(.system(size: 100, weight: .bold, design: .rounded))
             .foregroundColor(Color(red: 129/255, green: 255/255, blue: 3/255))
             .padding(50)
             .background(Color.black)
             .clipShape(Circle())*/  //Hecho por mi...y lo de debajo es como lo hizo Juan Gabriel
            
            Circle()
                .frame(width:160, height: 160)
                .foregroundColor(colorButton)
                .overlay(Text("\(contador)")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(red: 129/255, green: 255/255, blue: 3/255))
                )
        }
    }
}

struct Papelera: View {
    
    @Binding var contador: Int
    @Binding  var black : Int
    @Binding  var red : Int
    @Binding  var blue : Int
    
    var body: some View {
        Button {
            contador = 0
            black = 0
            red = 0
            blue = 0
            
        } label: {
            Image(systemName: "trash")
                .frame(minWidth:0, maxWidth: .infinity)
                .padding()
                .font(.largeTitle)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(50)
                .padding()
        }
    }
}
