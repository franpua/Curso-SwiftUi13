//
//  DetailView.swift
//  Doce-Modals
//
//  Created by Francisco Gonzalez Rodriguez on 20/4/22.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var deportiva: Deportiva
    
    @ State private var showAlert = false // esta varible es para presentar la alerta al cerrar el modal.
    
    var body: some View {
        ScrollView{
            VStack {
                Image(deportiva.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 400)
                    //.cornerRadius(30)
                
                Text(deportiva.name)
                    .font(.system(.title, design: .rounded).bold())
                    .multilineTextAlignment(.center) //esto lo saqué mejor haciendo clic en Text y luego haciendo clic en text abajo en el canvas y lo seleccioné en el desplegable.
                    .frame(width: 200)
                Text(deportiva.description)
                    .font(.body)
                    .padding()
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top) //para que la imagen nos vaya hasta arriba ignorando el área segura.
        //para colocar un botón para cerrar el modal lo vamos a hacer con un overlay y una HStack
        .overlay(alignment: .trailing) {
            HStack{
                Spacer() // para echarlo hacia la derecha al estar en un HStack
                VStack{
                    Button {
                        //presentationMode.wrappedValue.dismiss() - la acción del cerrar el modal, en vez de en el botón la pasamos al botón de la alerta. Y aquí ahora para que aparezca la alerta lo que hacemos es colocar la variable showAlert a true:
                        showAlert = true
                    } label: {
                        Image(systemName: "chevron.down.circle")
                            .font(.largeTitle)
                            .foregroundColor(.orange)
                    }
                    .padding() 
                    Spacer()
                }
            }
        }
        .alert("¡Cuidado!", isPresented: $showAlert) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Si")
            }
            Button {
                print("no")
            } label: {
                Text("No")
            }
        }message: {
            Text("¿Estas seguro que quieres cerrar esta ventana?")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(deportiva: Deportiva(name: "BMW S1000RR", image: "BMW")) //aquí de momento le he pasado estos dos parámetro inventados para que no de error
    }
}
