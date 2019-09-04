//
//  ViewController.swift
//  Analisis3
//
//  Created by kevin on 8/18/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Controller: UISegmentedControl!
    
    @IBOutlet weak var TextoVacio: UILabel!
    
    @IBOutlet weak var Slider1: UISlider!
    
    @IBOutlet weak var Texto1: UILabel!
    
    
    @IBOutlet weak var OnOff: UISwitch!
    
    @IBOutlet weak var textLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Select(_ sender: Any) {
        if Controller.selectedSegmentIndex == 0{
            TextoVacio.text = "Hello Wordl"
        }
        if Controller.selectedSegmentIndex == 1{
            TextoVacio.text = "Slider"
        }
        if Controller.selectedSegmentIndex == 2{
            TextoVacio.text = "Switch"
        }
    }
    
    
    @IBAction func UpDown(_ sender: UISlider) {
        let text2 = Int(sender.value)
        
        Texto1.text = "\(text2)"
    }
    
    
    @IBAction func OnOff1(_ sender: UISwitch) {
        if OnOff.isOn{
            textLabel.text = "This switch is on"
        }else{
            textLabel.text = "This switch is off"
        }
    }
    
}

