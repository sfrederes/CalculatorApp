//
//  ViewController.swift
//  Caclulator
//
//  Created by Sam Frederes on 7/14/17.
//  Copyright © 2017 Sam Frederes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum = 0;

    @IBAction func MainButton(_ sender: Any) {
        sum += 1;
        print("The sum is \(sum)")
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

