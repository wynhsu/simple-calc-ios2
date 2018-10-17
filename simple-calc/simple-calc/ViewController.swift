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
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let val = sender.currentTitle!
        let newStr = outputString.text! + val
        outputString.text! = newStr
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        outputString.text! = ""
        output.text! = "0"
    }
    
    @IBAction func compute(_ sender: UIButton) {
        let eq = outputString.text!
        var first = ""
        var second = ""
        var operand = ""
        for i in 0..<eq.count {
            let index = String(eq[eq.index(eq.startIndex, offsetBy: i)])
            if (index == "÷") || (index == "x") || (index == "-") || (index == "+") || (index == "%") {
                operand = index
            } else if operand != "" {
                second += index
            } else {
                first += index
            }
        }
        print(first)
        print(operand)
        print(second)
        var result = 0
        let arg1 = Int(first)!
        let arg2 = Int(second)!
        print(arg1)
        print(arg2)
        switch operand {
        case "÷":
            result = arg1 / arg2
        case "x":
            result = arg1 * arg2
        case "-":
            result = arg1 - arg2
        case "+":
            result = arg1 + arg2
        case "%":
            result = arg1 % arg2
        default:
            result = 0
        }
        output.text! = String(result)
        outputString.text! = ""
    }
}

