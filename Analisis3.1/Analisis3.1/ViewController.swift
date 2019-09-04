//
//  ViewController.swift
//  Analisis3.1
//
//  Created by kevin on 8/19/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var webView1: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://www.apple.com/la/ios/ios-12/")
        webView1.loadRequest(URLRequest(url: url!))
    }


}

