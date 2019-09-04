//
//  Cuenta.swift
//  Analisis2
//
//  Created by kevin on 8/13/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import Foundation

class Cuenta{
    
    var nombre:String
    var Ncuenta:String
    var saldo:Double = 0.0
    
    init(nombre:String,Ncuenta:String,saldo:Double) {
        self.nombre = nombre
        self.Ncuenta = Ncuenta
        self.saldo = saldo
    }
    
    func Depositar(cantidad:Double) {
        if cantidad > 0 {
            saldo = saldo + cantidad
        }else{
            print("No se aceptan numeros negativos")
        }
    }
    
    func Retirar(cantidad:Double){
        if cantidad <= saldo {
            saldo =  saldo - cantidad
            
        }else{
            print("No se puede retirar mas dinero del disponible")
        }
    }
    
    func Consultar(){
        print("Su saldo es: \(saldo)")
    }
}

