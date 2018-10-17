//
//  ViewController.swift
//  simple-calc
//
//  Created by Wynston Hsu on 10/16/18.
//  Copyright © 2018 Wynston Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var equation = ""
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var outputString: UILabel!
    
    @IBAction func specialOp(_ sender: UIButton) {
        let val = sender.currentTitle!
        output.text! = val
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        let val = sender.currentTitle!
        let newStr = outputString.text! + val
//        result += Int(val)!
        outputString.text! = newStr
    }
    
}

