//
//  ViewController.swift
//  EvenOdd
//
//  Created by Kintali,Akshay Krishna on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOutlet: UITextField!
   
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Submit(_ sender: Any) {
        let input = Int (inputOutlet.text!)
        if(input!/2 == 0){
            Label.text = "\(input!) is even number"
        }
        else{
            Label.text = "\(input!) is odd number"
        }
    }
    

}

