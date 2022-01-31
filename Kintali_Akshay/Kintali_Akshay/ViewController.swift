//
//  ViewController.swift
//  Kintali_Akshay
//
//  Created by Kintali,Akshay Krishna on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var firstName = firstNameTextField.text!
        var lastName = lastNameTextField.text!
        fullNameLabel.text = "\(firstName) \(lastName)"
        var firstInitial = firstName.prefix(1)
        var lastInitial = lastName.prefix(1)
        initialsLabel.text = "\(firstInitial)\(lastInitial)"
    }

    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
}



