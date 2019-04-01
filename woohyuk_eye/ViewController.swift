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
    //var currentVal = 50
    var targetValue = 0
    var score = 0
    var round = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //startNewRound()
        startNewGame()
    }
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @IBAction func showAlert(){
        let difference = abs(targetValue-currentValue)
        var points = 100 - difference
        let title: String
        if difference == 0{
            title = "Perfect!"
            points += 100
        }
        else if difference < 5{
            title = "You almost had it!"
            if difference == 1{
                points += 50
            }
        }
        else if difference < 10{
            title = "Pretty good!"
        }
        else{
            title = "Not even close..."
        }
        score+=points
        let message = "You scored \(points)"
        let alert = UIAlertController(title: title ,message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome",style: .default, handler: {_ in self.startNewRound()})
        alert.addAction(action)
        present(alert,animated: true, completion:nil)
        //startNewRound()
    }
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now: \(currentValue)")
    }
    @IBAction func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }
    func startNewRound(){
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }

}

