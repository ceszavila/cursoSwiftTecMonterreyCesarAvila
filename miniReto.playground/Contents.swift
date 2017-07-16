/* MINI RETO:
        GENERAR UNA SERIE DE NÚMEROS DEL 0 AL 100
        † CADA VEZ QUE SE IMPRIMA UN NÚMERO, SE DEBERÁ IMPRIMIR DE ACUERDO A LAS SIGUIENTES
        4 REGLAS:
             SI EL NÚMERO ES DIVISIBLE ENTRE 5 IMPRIMIR LA FRASE #BINGO!!! Y EL NÚMERO
             SI EL NÚMERO ES PAR IMRPRIMIR EL NÚMERO Y LA PALABRA PAR
             SI EL NÚMERO ES IMPAR IMPRIMIR EL NÚMERO YY LA PALABRA IMPAR
             SI EL NÚMERO SE ENCUENTRA EN UN RANGO DEÑ 30 AL 40 IMPRIMR LA FRASE #VIVA SWIFT!!! Y EL NÚMERO
*/

import UIKit

var serieDeNumeros = 1...100 // CREANDO LA SERIE DE NÚMEROS DEL 0 AL 100

for aux in serieDeNumeros{
    if aux >= 30 && aux <= 40{ // EVALUANDO RANGO DEL 30 AL 40
        print(aux,"#Viva Swift")
    } else if (aux%5) == 0 {   // EVALUANDO SI EL NÚMERO ES DIVISIBLE ENTRE 5
        print(aux, "Bingo!!")
    } else if (aux%2) == 0 {   // EVALUANDO SI EL NÚMERO ES PAR
        print(aux,"Par")
    } else if (aux%2) != 0 {   // EVALUANDO SI EL NÚMERO ES IMPAR
        print(aux,"Impar")
    }

}
