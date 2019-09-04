//
//  main.swift
//  Analisis
//
//  Created by kevin on 7/26/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import Foundation

var salir = "no"
var opcion = ""

repeat{
    print("Eliga la opcion")
    print("1.Metodo Burbuja \n2.Divisor de un numero \n3.Calcular potencia \n4.Tabla de multiplicar")
    opcion = readLine()!
    
    switch (opcion){
    case "1":
        ////METODO BURBUJA
        var arreglo: [Int] = []
        var aux: Int
        var resp: String
        resp = "yes"
        
        while resp == "yes"{
            print("Digite el numero: ")
            let elements = readLine()
            if let valor = Int(elements!){
                arreglo.append(valor)
            }else{
                 print("No es numero!")
                /////METODO BURBUJA
                for x in 0...(arreglo.count-1){
                    for j in 0...(arreglo.count-x){
                        if (arreglo[j] > arreglo[j+1]){
                            aux =  arreglo[j]
                            arreglo[j] = arreglo[j+1]
                            arreglo[j+1] = aux;
                        }
                    }
                }
            }
            print("Deseas continuar?")
            resp = readLine()!
        }
        ///mostrar arreglo ordenado
        for m in 0...arreglo.count-1{
            print( "\(arreglo[m])" + " ")
        }
        break
    case "2":
        Divisores()
    case "3":
        //POTENCIA DE UN NUMERO
        var base = Double()
        var pot = Double()
        
        print("Ingrese la base")
        base = Double(readLine()!)!
        
        print("Ingrese el exponente")
        pot = Double(readLine()!)!
        
        print("El resultado es: \(pow(base, pot))")
    case "4":
        var num1 = Int()
        
        print("Digite un numero")
        num1 = Int(readLine()!)!
        
        print("Tabla del numero \(num1)")
        for i in 1...10{
            print( "\(num1)" + "*" + "\(i)" + "=" + "\(num1*i)")
        }
    default:
        print("Opcion desconocida")
    }
    print("Salir? Si-No")
    salir = (readLine()!)
    
}while(salir != "Si")




