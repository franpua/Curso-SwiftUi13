//
//  Course.swift
//  Doce-Modals
//
//  Created by Francisco Gonzalez Rodriguez on 21/4/22.
//

import Foundation

// Me traigo esto para este fichero para formar el Modelo, ya que esto es propiamente de la vista sino del modelo de datos. 

struct Deportiva: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false //esto para finalizar sería para destacar una fila en concreto con la vista grande. A la que queramos destacar le pasamos arriba el parámetro en el array y en la lista hacemos un if. Eso sí, en este caso como en la nueva estructura no tenemos identifcador tendríamos que cambiarlo de nuevo por un deportivas.indices (se pone indices porque es plural) y cambiamos de nombre del parámetro antes del in por por ej: indice
    var description = ""
}
