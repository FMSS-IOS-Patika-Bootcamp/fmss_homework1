//
//  ViewController.swift
//  fmss_homework1
//
//  Created by Misafir on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var name   : String = ""
    var age    : String = ""
    var height : String = ""
    @IBOutlet weak var textField: UILabel!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    // Where we call functions and text Fields
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField3.text = name
        textField2.text = age
        textField4.text = height
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNext", sender: self)
    }
    // Where we go to the next page with the button
    
}

