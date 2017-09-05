//Tarea seman 4 Velocimetro.
import UIKit
enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
    /* Se crea una funciòn para recuperar la velocidad como cadena*/
    func obtenerNombre() -> String {
        let etiquetas:[String] = ["Apagado", "Velocidad Baja", "Velocidad Media", "Velocidad Alta"]
        return etiquetas[self.hashValue]
        
   
    }
}

class Automovil {
    var velocidad: Velocidades
    let pasos: [Velocidades]=[Velocidades.Apagado,Velocidades.VelocidadBaja, Velocidades.VelocidadMedia, Velocidades.VelocidadAlta]
    var cambio:Int = 1
    init() {
        self.velocidad = Velocidades(velocidadInicial:.Apagado)
        
    }
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        /*se recuperan los valores antes de aumentar la velocidad para cumplir con el ejemplo de secuencia correcta*/
        let actual:Int  = velocidad.rawValue
        let nombre:String = velocidad.obtenerNombre()
        if cambio > 1 {
            //siempre se obtiene el valor para velocidad Media y Alta
            self.velocidad = self.pasos[(self.cambio%(self.pasos.count-2))+2]
        }else{
            self.velocidad = self.pasos[self.cambio]
        }
        self.cambio+=1;
        return (actual,nombre)
        
    }
}

let auto = Automovil();
var resultado:(actual:Int, velocidadEnCadena:String)
for indice in 1...20 {
    resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
    
}

