//: Playground - noun: a place where people can play

import UIKit


var rango:[Int] = []

rango += 0...100

for valor in rango {
    
    //No evaluamos el cero pues no cumple con ninguna condición y puede dar falsos positivos.
    if (valor > 0){
    
        //El número es divisor de 5
        if(valor%5 == 0){
            print("#\(valor)  Bingo!!!");
        }
        //El número es par
        if (valor%2 == 0){
            print("#\(valor)  par!!!");
        }else{ // El número es impar
            print("#\(valor)  impar!!!");
        }
        if (valor > 30 && valor < 40){
            print("#\(valor)  Viva Swift!!!");
        }
    }
}