//
//  Deportiva.swift
//  Trece-forms
//
//  Created by Francisco Gonzalez Rodriguez on 21/4/22.
//

import Foundation

struct Deportiva: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var type: String //tipo de moto
    var priceLevel: Int // nivel de precios
    var featured: Bool = false // si está destacada o no la moto 
    var purchased: Bool = false //si ha sido comprada o no
}
