// CESAR RAUL AVILA
// 27.JULIO.2017
// MINI RETO 2

import UIKit
/*
 DECLARANDO UNA ENUMERACION DE TIPO INT LLAMADA VELOCIDADES
 */
enum Velocidades : Int{
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    // DECLARANDO EL INICIALIZADOR QUE RECIBE UNA VELOCIDAD
    // EL INICALIZADOR SE DEBE ASIGNAR A EL VALOR VELOCIDADINICIAL
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    var velocidadEnCadena: String{
        switch self {
        case .apagado:
            return "Apagado"
        case .velocidadBaja:
            return "Velocidad Baja"
        case .velocidadMedia:
            return "Velocidad Media"
        case .velocidadAlta:
            return "Velocidad Alta"

        }
    }
}
// DECLARANDO LA CLASE AUTO
class Auto{
    //  DECLARANDO UNA VARIABLE QUE ES UNA INSTANCIA DE LA ENUMERACION VELOCIDADES LLAMADA VELOCIDAD
    var velocidad : Velocidades
    
    /* AGREGA LA FUNCION INICIALIZADOA QUE CREA UNA INSTANCIA DE VELOCIDADES: VELOCIDAD
     DEBE INICARI EN APAGADO
     */
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    

    
    // FUNCION CAMBIO DE VELOCIDAD
    
    func cambioDeVelocidad()->(actual:Int,velocidadEnCadena:String){

        
       let velocidadActual = self.velocidad
        if self.velocidad == .apagado{
            self.velocidad = .velocidadBaja
        }else if self.velocidad == .velocidadBaja{
            self.velocidad = .velocidadMedia
        }else if self.velocidad == .velocidadMedia{
            self.velocidad = .velocidadAlta
        }else if self.velocidad == .velocidadAlta{
            self.velocidad = .velocidadMedia
        }else if self.velocidad == .velocidadMedia{
            self.velocidad = .velocidadBaja
        }else if self.velocidad == .velocidadBaja{
            self.velocidad = .apagado
        }
        return (velocidadActual.rawValue,velocidadActual.velocidadEnCadena)
        
    }
    

}

var autoDos = Auto()

for var i in 0 ... 20{
    print(autoDos.cambioDeVelocidad())
}





