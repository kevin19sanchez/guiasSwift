//
//  main.swift
//  Analisis2
//
//  Created by kevin on 8/13/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import Foundation

var salir = "No"
var opcion = ""
var cuentas=[Cuenta]()

repeat{
    print("Que desea hacer?")
    print("1. Crear cuenta \n2. Depositar \n3. Retirar \n4. Consultar")
    
    opcion = readLine()!
    
    switch(opcion){
    case "1":
        print("Digite su nombre: ")
        var name = readLine()
        
        print("Digite el numero de cuentas: ")
        var nCuentas = readLine()!
        
        let tmp = Cuenta(nombre: name!, Ncuenta: nCuentas, saldo: 0.0)
        
        cuentas.append(tmp)
        print("Su cuenta se guardo exitosamente!!!")
        break
    case "2":
        print("Digite el numero de cuentas donde desea depositar")
        var depositar = readLine()
    
        for i in cuentas{
            if depositar == i.Ncuenta{
                print("Digite la cantidad a depositar")
                var quantity = Double(readLine()!)!
                
                i.Depositar(cantidad: quantity)
            }
        }
        break
    case "3":
        print("Digite el numero de cuentas donde desea depositar")
        var depositar = readLine()
        
        for i in cuentas{
            if depositar == i.Ncuenta{
                print("Digite la cantidad a retirar")
                var quantity = Double(readLine()!)!
                
                i.Retirar(cantidad: quantity)
            }
        }
        break
    case "4":
        for i in cuentas{
            print("Su Nombre: \(i.nombre)")
            print("Numero de cuentas \(i.Ncuenta)")
            print("Su saldo es: $\(i.saldo)")
        }
        break
    default:
        print("Opcion desconocida")
    }
}while(salir != "Si")

