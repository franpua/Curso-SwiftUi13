//
//  ContentView.swift
//  Once-Navitation
//
//  Created by Francisco Gonzalez Rodriguez on 14/4/22.
//

import SwiftUI



struct ContentView: View {
    
        var deportivas = [Deportiva(name: "Aprilia RSV 1000 Factory", image: "Aprilia"),
                      Deportiva(name: "BMW S1000RR", image: "BMW"),
                      Deportiva(name: "Ducati panigale", image: "Ducati"),
                      Deportiva(name: "Honda CBR1000RR", image: "Honda", feature: true),
                      Deportiva(name: "Kawasaki 1000", image: "Kawasaki"),
                      Deportiva(name: "KTM RC8", image: "KTM", feature: true),
                      Deportiva(name: "Suzuki 1000", image: "Suzuki"),
                      Deportiva(name: "Yamaha R1 60 Aniversario", image: "Yamaha")]
    
    // Acabo comentando todo el init() para que podamos quitar la barra de la vista de detalle si queremos ignorar el area segura, ya que UIKit y SwiftUI aún no se llevan bien del todo para hacer esto.
    
//    init() { // con esto personalizados el título de la barra de navegación. (con las dos primeras llamadas a appearance, y con la tercera personalizamos la barra de volver atrás y luego le cambiamos también el color.
//        let appearance = UINavigationBarAppearance()
//        appearance.largeTitleTextAttributes = [
//            .font: UIFont(name: "Times New Roman", size: 30)!,
//            .foregroundColor: UIColor.systemBrown
//        ]
//        appearance.titleTextAttributes = [
//            .font: UIFont(name: "Times New Roman", size: 16)!,
//            .foregroundColor: UIColor.systemBrown
//        ]
//        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left.circle.fill"), transitionMaskImage: UIImage(systemName: "arrow.left.circle"))
//        UINavigationBar.appearance().tintColor = .brown
//
//        UINavigationBar.appearance().standardAppearance = appearance
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//        UINavigationBar.appearance().compactAppearance = appearance
//
//    }
    
    var body: some View {
        NavigationView{ // con esto hacmos que la vista sea navegable.
            List(deportivas.indices, id: \.self) { indice in
                //el pegamento que uniría las dos vistas y con el podemos navegar de una a otra (ContentView y DetailView) sería el NavigatinonLink, al cual le pasamos un destino, en este caso la nueva vista DetailView, la cual tiene un parámatro que es la varible que allí declaramos (deportiva:Deportiva) y la cual le pasamos las deportivas de la lista y el array del índice para que aparezca la que hemos seleccionado. Fijarse que el NavigationLink abre llave y cierra después del else.
                ZStack {
                    NavigationLink( destination: DetailView(deportiva: deportivas[indice])) {
                        if self.deportivas[indice].feature{
                            fullRowMotorBike(deportiva: self.deportivas[indice])
                        }else{
                            rowMotorBike(deportiva: self.deportivas[indice])
                        }
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
struct Deportiva: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false //esto para finalizar sería para destacar una fila en concreto con la vista grande. A la que queramos destacar le pasamos arriba el parámetro en el array y en la lista hacemos un if. Eso sí, en este caso como en la nueva estructura no tenemos identifcador tendríamos que cambiarlo de nuevo por un deportivas.indices (se pone indices porque es plural) y cambiamos de nombre del parámetro antes del in por por ej: indice
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
struct fullRowMotorBike: View{

    var deportiva: Deportiva
    
    var body: some View{
        ZStack{
            
            Image(deportiva.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:250)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(.systemGray))
                            .opacity(0.4)
                )
                
            
            Text(deportiva.name)
                .font(.system(.title2, design: .rounded).bold())
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
        }
    }
}
