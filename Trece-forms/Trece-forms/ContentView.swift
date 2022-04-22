//
//  ContentView.swift
//  Trece-forms
//
//  Created by Francisco Gonzalez Rodriguez on 21/4/22.
//

import SwiftUI

struct ContentView: View {
    //en este caso en vez de sacarnos para otro archivo de factory la variable deportivas, como en este caso la vista tiene que estar pendiente en todo momento de ellas porque van a ir cambiando en función de lo que seleccione el usuario lo que vamos a hacer es declararla como un estado State.
      @State var deportivas = [Deportiva(name: "Aprilia RSV 1000 Factory", image: "Aprilia", type: "japonesa", priceLevel: 5, purchased: true),
                      Deportiva(name: "BMW S1000RR", image: "BMW", type: "alemana", priceLevel: 4),
                      Deportiva(name: "Ducati panigale", image: "Ducati", type: "italiana", priceLevel: 5),
                      Deportiva(name: "Honda CBR1000RR", image: "Honda", type: "japonesa", priceLevel: 4, purchased: true),
                      Deportiva(name: "Kawasaki 1000", image: "Kawasaki", type: "japonesa", priceLevel: 5),
                      Deportiva(name: "KTM RC8", image: "KTM", type: "austriaca", priceLevel: 5, featured: true),
                      Deportiva(name: "Suzuki 1000", image: "Suzuki", type: "japonesa", priceLevel: 3),
                      Deportiva(name: "Yamaha R1 60 Aniversario", image: "Yamaha", type: "japonesa", priceLevel: 4, featured: true)]

    
    var body: some View {
        NavigationView{ // con esto hacmos que la vista sea navegable.
            List(deportivas.indices, id: \.self) { indice in
                //el pegamento que uniría las dos vistas y con el podemos navegar de una a otra (ContentView y DetailView) sería el NavigatinonLink, al cual le pasamos un destino, en este caso la nueva vista DetailView, la cual tiene un parámatro que es la varible que allí declaramos (deportiva:Deportiva) y la cual le pasamos las deportivas de la lista y el array del índice para que aparezca la que hemos seleccionado. Fijarse que el NavigationLink abre llave y cierra después del else.
                ZStack {
                    NavigationLink( destination: DetailView(deportiva: deportivas[indice])) {
                       
                        rowMotorBike(deportiva: self.deportivas[indice])
                    }
                }
            }
            .navigationTitle("Motos deportivas") // el modificador para ponerle título a la vista se aplica a la lista y NO al NavigationView. Con el título grande si la lista es grande y hacemos scroll para arriba vemos que el título no desaparece pero se hace más pequeño y se centra.
            .navigationBarTitleDisplayMode(.inline) //con esto tenemos tres opciones si queremos que el título sea más pequeño pondremos el .inline
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct rowMotorBike: View {
    
    var deportiva: Deportiva
    
    var body: some View {
        HStack {
            Image(deportiva.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipped()
                .cornerRadius(25)
            
            
            
            Text(deportiva.name)
                .font(.system(.title3, design: .rounded).bold())
        }
    }
}

