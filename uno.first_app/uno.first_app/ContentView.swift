//
//  ContentView.swift
//  uno.first_app
//
//  Created by Francisco Gonzalez Rodriguez on 17/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("""
             Mike Tayson - TODA LA VERDAD -
             El boxeo, para Tyson, fue siempre una cuestión de vida o muerte. Creció sin un padre, rodeado por personas que le expresaban su amor con golpes y en un entorno callejero en el que era blanco de las burlas de los chicos mayores. Pero pudo encontrar, gracias al boxeo, la vía de escape que le permitió ser, con sólo veinte años, campeón mundial de peso pesado y no, en cambio, un delincuente juvenil. Pero ser campeón le trajo, con el tiempo, problemas. Tantos, que Tyson terminó yendo a la cárcel, de donde salió con un único deseo: el de escribir sus memorias y dar forma a una biografía marcada no sólo por la miseria y el boxeo, sino también por la fama, por el dinero, por las drogas y las mujeres, todo eso que constituye la trayectoria de Tyson, la biografía de un hombre, de una leyenda dentro y fuera del ring.
             """)
            .fontWeight(.bold)
            //.font(.title)
            //.font(.body)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.blue)
            //.font(.custom("Helvetica neue", size: 25))
            .multilineTextAlignment(.center)
            .lineSpacing(6)
            .rotation3DEffect(.degrees(30), axis: (x: 1, y: 0, z: 0))
            .padding()
            

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        
        }
    }
}
