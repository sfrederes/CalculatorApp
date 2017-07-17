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
    
    var result = "0"
    
    @IBAction func Button_dig(_ sender: UIButton) {
        if (Display.text! == "0"){
            Display.text = sender.currentTitle!
        }
        else{
            Display.text = Display.text! + sender.currentTitle!
        }
        result = Display.text!
    }
    
    var display_value : Double {
        get {
            return Double(Display.text!)!
        }
        set{
           Display.text = String(newValue)
        }
    }
    
    @IBAction func Button_op(_ sender: UIButton) {
        if let mathmatical_symbol = sender.currentTitle {
            switch mathmatical_symbol {
            case "C":
                Display.text = "0"
                result = "0"
            case "=":
                Display.text = result
            case "√":
                display_value = sqrt(display_value)
            default:
                break
            }
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

