//
//  DetailView.swift
//  Once-Navitation
//
//  Created by Francisco Gonzalez Rodriguez on 14/4/22.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var deportiva: Deportiva
    
    var body: some View {
        VStack {
            Image(deportiva.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 400)
                .cornerRadius(30)
            
            Text(deportiva.name)
                .font(.system(.title, design: .rounded).bold())
                .multilineTextAlignment(.center) //esto lo saqué mejor haciendo clic en Text y luego haciendo clic en text abajo en el canvas y lo seleccioné en el desplegable.
                .frame(width: 200)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top) //para que la imagen nos vaya hasta arriba ignorando el área segura.
        .navigationBarBackButtonHidden(true)
        // con el toolbar de debajo ponemos un botón personalizado en la barra de navación para que podamos volver atrás
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    // para volver atras con el botón llamamos a la variable creada arriba con un @Environment y le pasamos el .wrappedValue.dismiss() para borrar la vista actual y volver a la anterior.
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.title)
                        .foregroundColor(.orange)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(deportiva: Deportiva(name: "BMW S1000RR", image: "BMW")) //aquí de momento le he pasado estos dos parámetro inventados para que no de error
    }
}
