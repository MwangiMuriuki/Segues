//
//  ViewController.swift
//  Segue
//
//  Created by ERNEST MURIUKI on 3/11/20.
//  Copyright © 2020 ERNEST MURIUKI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, canReceiveReply {
    

    @IBOutlet weak var newLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let enterdText = textField.text
        
        if enterdText!.isEmpty{
            
            print("Please enter anything")
            
        }else{
            
            performSegue(withIdentifier: "nextPageNavigation", sender: self)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nextPageNavigation" {
            
                let destinationVC = segue.destination as! SecondViewController
            
                destinationVC.textPassedOver = textField.text!
            
                destinationVC.delegate = self
    
        }
    }
    
    func replyReceived(textPassedOver: String) {
        
        newLabel.text = textPassedOver
       }
    

    
}

