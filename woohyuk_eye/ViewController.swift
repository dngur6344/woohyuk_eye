//
//  ViewController.swift
//  woohyuk_eye
//
//  Created by user on 01/04/2019.
//  Copyright © 2019 woohyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello, World",message: "This is my first app!",preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome",style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion:nil)
    }
}

