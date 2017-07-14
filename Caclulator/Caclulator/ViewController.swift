//
//  ViewController.swift
//  Caclulator
//
//  Created by Sam Frederes on 7/14/17.
//  Copyright © 2017 Sam Frederes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var result = 0;
    var str1 = "0";
    var str2 = "0";
    var buttonChanged = false;

    
    @IBAction func Button_0(_ sender: UIButton) {
        buttonChanged = true
        if (Display.text! == "0"){Display.text! = "0"}
        Display.text = Display.text! + "0"
    }
    
    @IBAction func Button_1(_ sender: UIButton) {
        if (Display.text! == "0"){
            Display.text! = "1"
        }
        else{
        Display.text! = Display.text! + "1"
        }
    }
    
  
    @IBAction func Button_2(_ sender: UIButton) {
        if (Display.text! == "0"){
            Display.text! = "2"
        }
        else{
            Display.text! = Display.text! + "2"
        }
    }
   
    @IBAction func Button_3(_ sender: UIButton) {
        if (Display.text! == "0"){
            Display.text! = "3"
        }
        else{
        Display.text! = Display.text! + "3"
        }
    }
    
    @IBAction func Button_4(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "4"
        }
        else{
        Display.text! = Display.text! + "4"
        }
    }
    
    @IBAction func Button_5(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "5"
        }
        else{
        Display.text! = Display.text! + "5"
        }
    }
    
    @IBAction func Button_6(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "6"
        }
        else{
        Display.text! = Display.text! + "6"
        }
    }
    
    @IBAction func Button_7(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "7"
        }
        else{
        Display.text = Display.text! + "7"
        }
    }
    
    @IBAction func Button_8(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "8"
        }
        else{
        Display.text = Display.text! + "8"
        }
    }
    
    @IBAction func Button_9(_ sender: UIButton) {
        if (Display.text == "0"){
            Display.text = "9"
        }
        else{
        Display.text = Display.text! + "9"
        }
    }
    
    @IBAction func Equal(_ sender: UIButton) {
        if (buttonChanged || str1 != "0"){}
        else{}
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        Display.text! = "0"
    }
    
    @IBOutlet weak var Display: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

