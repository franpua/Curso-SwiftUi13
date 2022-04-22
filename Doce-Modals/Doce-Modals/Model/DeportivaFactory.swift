//
//  DeportivaFactory.swift
//  Doce-Modals
//
//  Created by Francisco Gonzalez Rodriguez on 21/4/22.
//

import Foundation
import UIKit
import SwiftUI

// Me saco esto de la vista también para ese fichero ya que esto forma parte del modelo de vista pero hay que dejar la vista limpia de todos estos datos. 

struct DeportivaFactory {
    
    //let atributsBold = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18, weight: .bold)]
    static var deportivas = [Deportiva(name: "Aprilia RSV 1000 Factory", image: "Aprilia"),
                  Deportiva(name: "BMW S1000RR", image: "BMW"),
                  Deportiva(name: "Ducati panigale", image: "Ducati", description: """
La fusión perfecta de poder y elegancia.

La nueva Panigale V2 es una moto robusta pero compacta de diseño esencial con líneas bien definidas que transmiten potencia sin comprometer el estilo clásico de las motos de Ducati.

La Panigale V2 presenta una basculante monobrazo de aluminio, el sello distintivo de las Ducati deportivas de alta gama. El extenso carenado destaca el motor Superquadro de dos cilindros más compacto (más pequeño en comparación con el Desmosedici Stradale), creando una moto que es visiblemente más delgada y menos intimidante que la Panigale V4.

\("Gama de colores".uppercased())

La Panigale V2 ahora está disponible tanto en el tradicional Ducati Red con bordes negros de 5 radios en Y como en la nueva y vibrante White Rosso que combina detalles en el intenso Ducati Red con Star White Silk.

El predominio del blanco resalta las formas de la moto y la despoja de su forma más pura y perfecta. El lado más agresivo de la Panigale V2 se vuelve aún más enérgica, impulsadoa por el rojo en las llantas, las entradas de aire delanteras y el deflector de aire del carenado de la mitad superior.

Estos dos últimos acentos rojos acompañan el aire dentro de la motocicleta, flujos de aire que alimentan el motor y enfrían el radiador.
Dominando el extremo frontal están las dos grandes tomas de aire, cuyas partes superiores incorporan el faro full-LED. Las nuevas tomas se fusionan con el diseño de alimentación de aire existente a través de conductos de nuevo diseño que, con tasas de entrega iguales, pierden menos presión que las anteriores, lo que aumenta la eficiencia de admisión.

El faro se ha compactado con la intención expresa de dar a las tomas en sí mismas, especialmente con la moto parada, un aire más amenazante. Dos bordes especialmente formados en la parte inferior de las tomas de aire aceleran la entrada de aire. El faro full-LED consta de una luz diurna (que crea un doble efecto de 'ceja', que resalta el borde superior de la toma de aire) y dos módulos compactos LED de luz de cruce/luz de carretera.
Carenado "doble capa"

El carenado tiene una configuración de 'doble capa': una capa principal que se extiende hacia arriba y se funde con el tanque a través de dos puntales resistentes, y una capa secundaria que también actúa como ventilación de aire. Esta solución de 'doble capa' revive las líneas limpias típicas de las motocicletas deportivas Ducati, famosas por su aspecto de carenado completo. La parte inferior del carenado se fusiona visualmente con el silenciador debajo del motor, que termina en una tubería extrema extremadamente compacta del lado derecho.
Perfect Ducati Style

La cola está construida sobre un bastidor auxiliar de enrejado de acero forrado con cubiertas de plástico que van desde el cilindro vertical hasta la pieza de cola, de diseño alado, tipo alerón.

La pieza trasera incorpora la luz trasera LED completa, también en forma de ala: mientras que un ensamblaje de una pieza, la luz tiene dos partes distintas según la tradición de la bicicleta deportiva Ducati. La Panigale V2 combina el rojo clásico Ducati con ruedas negras de 5 radios de un diseño inspirado en la Panigale V4.
"""),
                  Deportiva(name: "Honda CBR1000RR", image: "Honda", feature: true),
                  Deportiva(name: "Kawasaki 1000", image: "Kawasaki"),
                  Deportiva(name: "KTM RC8", image: "KTM", feature: true),
                  Deportiva(name: "Suzuki 1000", image: "Suzuki"),
                  Deportiva(name: "Yamaha R1 60 Aniversario", image: "Yamaha")]
}
