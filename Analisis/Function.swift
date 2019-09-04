//
//  Function.swift
//  Analisis
//
//  Created by kevin on 7/28/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import Foundation

////DIVISORES DE UN NUMERO
func Divisores() {

    print("Digite un numero")
    var num1 = Int(readLine()!)!

    print("Los divisores del numero \(num1) son: ")

    for i in 1...num1{
        if num1 % i == 0{
        print(i)
        }
    }
}
//////////////////////////////////
//var num2 = Int()
//
//print("Digite un numero")
//num2 = Int(readLine()!)!
//
//print("Los divisores del numero \(num2) son:")
//
//for i in 1...num2{
//    if num2 % i == 0{
//        print(i)
//    }
//}

/////////////////////////////////////////////////
//func Burbuja(arreglo:[Int]) -> [Int]{
//    var aux = Int()
//    var arregloOrdenado: [Int] = []
//
//    for i in 2...arreglo.count {
//        for j in 0...arreglo.count-1{
//            if arreglo[j] > arreglo[j+1]{
//                aux = arreglo[j]
//                arreglo[j] = arreglo[j+1]
//                arreglo[j+1] = aux
//            }
//        }
//    }
//    arregloOrdenado = arreglo
//    return arregloOrdenado
//}
