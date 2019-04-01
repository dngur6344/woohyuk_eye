//
//  ViewController.swift
//  woohyuk_eye
//
//  Created by user on 01/04/2019.
//  Copyright © 2019 woohyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var slider: UISlider!
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello, World",message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome",style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion:nil)
    }
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now: \(currentValue)")
    }
}

