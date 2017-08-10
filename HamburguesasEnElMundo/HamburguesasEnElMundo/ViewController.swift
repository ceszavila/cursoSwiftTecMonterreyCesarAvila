//
//  ViewController.swift
//  HamburguesasEnElMundo
//
//  Created by Cesar Avila on 09/08/17.
//  Copyright © 2017 Cesar Avila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Creando instancias de las clases paises y hamburguesas 
    @IBOutlet weak var iBouletPais: UILabel!
    @IBOutlet weak var iBouletHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameHAmburuesaYPais() {
        iBouletPais.text = paises.regresaPais();
        iBouletHamburguesa.text = hamburguesas.regresaHamburguesa();
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
     
    }

}

