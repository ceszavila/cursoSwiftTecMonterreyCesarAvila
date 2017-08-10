//
//  Datos.swift
//  HamburguesasEnElMundo
//
//  Created by Cesar Avila on 09/08/17.
//  Copyright © 2017 Cesar Avila. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}

class ColeccionDePaises{
    let paises : [String] = ["Mexico","Estados Unidos","Alemania","Croacia","Dinamarca","España","Estonia","Finlandia","Francia","Grecia","Irlanda","Italia","Luxemburgo","Malta","Noruega","Países Bajos","Portugal","Reino Unido","Suecia","Suiza"]
    
    func regresaPais() -> String{
        let posicion = Int (arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas{
    let hamburguesas : [String] = ["Hamburguesa con queso", "Hamburguesa sin queso", "Hamburguesa sencilla", "Hamburguesa sin piña", "Hamburguesa con piña", "Hamburguesa doble", "Hamburguesa triple", "Hamburguesa con tocino", "Hamburguesa sin aros de cebolla", "Hamburguesa con aros de cebolla", "Hamburguesa de pollo", "Hamburguesa de pollo doble", "Hamburguesa con tocino", "Hamburguesa sin tocino", "Hamburguesa con pepnillos", "Hamburguesa sin pepinillos", "Hamburguesa con aderezo", "Hamburguesa sin aderezo", "Hamburguesa con jamón", "Hamburguesa sin jamón"]
    
    func regresaHamburguesa() -> String {
        let posicion = Int (arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}
