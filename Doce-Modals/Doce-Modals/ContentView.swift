//
//  ContentView.swift
//  Doce-Modals
//
//  Created by Francisco Gonzalez Rodriguez on 20/4/22.
//

import SwiftUI



struct ContentView: View {
    
    //@State var showModalView = false // en este caso NO vamos a hacer la variable privada porque sino solo vamos a poder acceder a ella a través de la ContentView, pero en este caso también necesitaremos que la DetailView acceda a ella para cerrar la vista.
    @State var selectedDeportiva: Deportiva? //esta variable de estado la creamos para saber que moto ha seleccionado el usuario para presentar la detail view en cuestión la vista va a requerir si os acordáis que le pasemos la moto en cuestión que ha sido seleccionada. Recordad que lo vamos a necesitar es almacenar la selección del usuario qué deportiva ha seleccionado en otra variable de estado por eso en la ContentView vais a necesitar un segundo estado segundo arroba State selectedDeportiva que será de tipo Deportiva y lo voy a colocar opcional. Vale con el interrogante sobre todo para que al inicio no haya un curso seleccionado inútilmente.
    
    var deportivas = [Deportiva(name: "Aprilia RSV 1000 Factory", image: "Aprilia"),
                  Deportiva(name: "BMW S1000RR", image: "BMW"),
                  Deportiva(name: "Ducati panigale", image: "Ducati"),
                  Deportiva(name: "Honda CBR1000RR", image: "Honda", feature: true),
                  Deportiva(name: "Kawasaki 1000", image: "Kawasaki"),
                  Deportiva(name: "KTM RC8", image: "KTM", feature: true),
                  Deportiva(name: "Suzuki 1000", image: "Suzuki"),
                  Deportiva(name: "Yamaha R1 60 Aniversario", image: "Yamaha")]
    
    
    var body: some View {
        NavigationView{ // con esto hacmos que la vista sea navegable.
            List(deportivas) { deportiva in
                
                fullRowMotorBike(deportiva: deportiva)//como quitamos el NavigationLink y estamos en una tabla para saber qeu se ha seleccionado algo lo hacemos con el onTapGesture:
                    .onTapGesture {
                        selectedDeportiva = deportiva // elegimos la fila a mostrar seleccionando la deportiva de la lista de deportivas
                    }
                  
            }// aquí debajo le pasamos el sheet que tiene dos modalidades el "isPresented" o el "item", en este caso usamos el item que nos ahorra utilizar una variable y es un poco más segura ya que nos obliga a que el item sea un valor opcional y en el closure al pasarle el parámetro moto a la DetalilView, como el parámetro moto hace referencia al item y este obligatoriamente tiene que ser opcional nunca va a dar error.
            .sheet(item: $selectedDeportiva, content: { moto in
                DetailView(deportiva: moto)
            })
            
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

/* ESTE ES EL MÉTODO DE HACERLO CON EL SHEET EN MODO "ISPRESENTED"
 
 @State var showModalView = false
 @State var selectedDeportiva: Deportiva?
 
 NavigationView{ // con esto hacmos que la vista sea navegable.
     List(deportivas) { deportiva in
         
         fullRowMotorBike(deportiva: deportiva)//como quitamos el NavigationLink y estamos en una tabla para saber qeu se ha seleccionado algo lo hacemos con el onTapGesture:
             .onTapGesture {
                 showModalView = true // ponemos el modal a true para que se muestre
                 selectedDeportiva = deportiva // elegimos la fila a mostrar seleccionando la deportiva de la lista de deportivas
             }
           
     }// aquí debajo le pasamos el sheet que tiene dos modalidades el "isPresented" o el "item"
     .sheet(isPresented: $showModalView, content: {
         if selectedDeportiva != nil{// esto es: si hay una deportiva seleccionada...
             DetailView(deportiva: selectedDeportiva!) //...entonces el DetailView nos muestra la deportiva seleccionada. En este caso le podemos meter el unwrapped con el ! porque con el if de arriba estamos seguros que sí hay una seleccionada.
         }
     })
 */
