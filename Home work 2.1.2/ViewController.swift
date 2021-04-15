//
//  ViewController.swift
//  Home work 2.1.2
//
//  Created by Valerii D on 14.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    
    var redTurn = true
    var greenTurn = false
    var yellowTurn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = 0.3
        redSignal.layer.cornerRadius = 52
        
        yellowSignal.alpha = 0.3
        yellowSignal.layer.cornerRadius = 52
        
        greenSignal.alpha = 0.3
        greenSignal.layer.cornerRadius = 52
        
        startButton.layer.cornerRadius = 10
        resetButton.layer.cornerRadius = 8
    }

    @IBAction func changeCollorButton() {
        if redTurn && !yellowTurn && !greenTurn {
            redSignal.alpha = 1
            greenSignal.alpha = 0.3
            redTurn = false
            yellowTurn = true
            startButton.setTitle("NEXT", for: .normal)
        } else if !redTurn && yellowTurn && !greenTurn {
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
            yellowTurn = false
            greenTurn = true
        } else if !redTurn && !yellowTurn && greenTurn {
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
            greenTurn = false
            redTurn = true
        }
    }
    
    @IBAction func reset() {
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
        redTurn = true
        greenTurn = false
        yellowTurn = false
        
        startButton.setTitle("START", for: .normal)
    }
}

