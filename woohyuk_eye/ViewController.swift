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
        startNewRound()
    }
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    var currentVal=50
    var targetValue=0
    var score=0
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentValue)"+"\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello, World",message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome",style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion:nil)
        startNewRound()
    }
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now: \(currentValue)")
    }
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue=50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels(){//
        targetLabel.text=String(targetValue)
    }
}

