//
//  ViewController.swift
//  Kintali_Calculator
//
//  Created by Akshay krishna Kintali on 02/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UILabel!
    
    var numberDisplay = ""
    var operLeft = ""
    var operRight = ""
    var answer = ""
    var operCurrent:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputDisplay.text = "0"
        }
    
    @IBAction func pressNumber(_ sender: UIButton) {
        if numberDisplay.count <= 8 {
            numberDisplay += "\(sender.tag)"
            outputDisplay.text = numberDisplay
        }
    }
    
    @IBAction func pressDot(_ sender: UIButton) {
        if numberDisplay.contains(".") {
            
        }else{
            if numberDisplay.count <= 7 {
                numberDisplay += "."
                outputDisplay.text = numberDisplay
                
            }
            
        }
        
    }
    
    @IBAction func pressAdd(_ sender: UIButton) {
        performOperation(operator: "+")
    }
    
    @IBAction func pressSub(_ sender: UIButton) {
        performOperation(operator: "-")
    }
    
    @IBAction func mulButtonPressed(_ sender: UIButton) {
        performOperation(operator: "*")
    }
    
    @IBAction func divButtonPressed(_ sender: UIButton) {
        performOperation(operator: "/")
    }
    
    @IBAction func signChangeButtonPressed(_ sender: UIButton) {
        if (numberDisplay != "") {
            numberDisplay = "-" + numberDisplay
        }
        outputDisplay.text = numberDisplay
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        numberDisplay = ""
        outputDisplay.text = numberDisplay
    }
    
    @IBAction func AllClearButtonPressed(_ sender: UIButton) {
        numberDisplay = ""
        operLeft = ""
        operRight = ""
        answer = ""
        operCurrent = ""
        outputDisplay.text = "0"
    }
    
    @IBAction func sqrtButtonPressed(_ sender: UIButton) {
        numberDisplay = "\(pow(Double(numberDisplay)!, 0.5))"
        outputDisplay.text = outputFormat(numberDisplay)
    }
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
       performOperation(operator: operCurrent)
    }
    
    func outputFormat(_ incominganswer:String) -> String {
        let inanswer = Double(incominganswer)!
        var outanswerStr = String(round(inanswer * 100000) / 100000.0)
        if outanswerStr.contains(".0") {
            outanswerStr.removeSubrange(outanswerStr.index(outanswerStr.endIndex, offsetBy: -2)..<outanswerStr.endIndex)
        }
        return outanswerStr
    }
    
    func performOperation(operator: String){
        if operCurrent != "" {
            if numberDisplay != "" {
                operRight = numberDisplay
                numberDisplay = ""
                
                switch operCurrent{
                case "+":
                    let sum = "\(Double(operLeft)! + Double(operRight)!)"
                    answer = outputFormat(sum)
                    //answer = "\(Double(operLeft)! + Double(operRight)!)"
                case "-":
                    let sub = "\(Double(operLeft)! - Double(operRight)!)"
                    answer = outputFormat(sub)
                case "*":
                    let mult = "\(Double(operLeft)! * Double(operRight)!)"
                    answer = outputFormat(mult)
                case "/":
                    if Int(operRight)! == 0 || Double(operRight)! == 0.0 {
                        answer = "Error"
                    }else{
                        let div = "\(Double(operLeft)! / Double(operRight)!)"
                        answer = outputFormat(div)
                    }
                default:
                    answer = ""
                }
                operLeft = answer
                outputDisplay.text = answer
            }
            operCurrent = `operator`
            
        }else{
            operLeft = numberDisplay
            numberDisplay = ""
            operCurrent = `operator`
        }
    }
    
    }

    
    
    


