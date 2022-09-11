//
//  SecondViewController.swift
//  fmss_homework1
//
//  Created by Hasan Narlı on 10.09.2022.
//

import UIKit

// Mücahit Hoca'nın bu yapıda yapmamızı istemediğinin farkındayım ancak istediği şekilde yapamadım, vaktim yetmedi. Diğer ödevlerde bu hatayı düzelteceğime inanıyorum. Bunu açıklamak istedim.


class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var pressedBackButton: UIButton!
    
    
    @IBOutlet weak var textOne: UITextField!
    
    @IBOutlet weak var textTwo: UITextField!
    
    @IBOutlet weak var textThree: UITextField!
    
    // Where we call Label,Button and Text Fields.
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goToBack", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBack" {
            let destinationViewC = segue.destination as? ViewController
            
            if let name = textOne.text {
                destinationViewC?.name = name
            }
            if let age = textTwo.text {
                destinationViewC?.age = age
            }
            if let height = textThree.text {
                destinationViewC?.height = height
            }
            
        }
        
    }// Using Prepare is where we hit the button and we're back.
    // The button also saves the written data on the first page.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
