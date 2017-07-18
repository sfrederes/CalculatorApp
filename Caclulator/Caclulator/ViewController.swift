//
//  ViewController.swift
//  Caclulator
//
//  Created by Sam Frederes on 7/14/17.
//  Copyright © 2017 Sam Frederes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Display: UILabel!
    
    var userIsTyping = false
    
    @IBAction func Button_dig(_ sender: UIButton) {
        if (userIsTyping){
            Display.text = Display.text! + sender.currentTitle!
            
        }
        else{
            Display.text = sender.currentTitle!
            userIsTyping = true
        }
    }
    
    var displayValue : Double {
        get {
            return Double(Display.text!)!
        }
        set{
           Display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func Button_op(_ sender: UIButton) {
        if userIsTyping{
            brain.setOperand(displayValue)
            userIsTyping = false
        }
        if let mathmaticalSymbol = sender.currentTitle {
            brain.performOperation(mathmaticalSymbol)
        }
        if let result = brain.result{
            displayValue = result
        }
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

