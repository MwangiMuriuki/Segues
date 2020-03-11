//
//  SecondViewController.swift
//  Segue
//
//  Created by ERNEST MURIUKI on 3/11/20.
//  Copyright © 2020 ERNEST MURIUKI. All rights reserved.
//

import UIKit

protocol canReceiveReply {
    
    func replyReceived(textPassedOver : String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var replyTextView: UITextField!
    
    var delegate : canReceiveReply?
    
    var textPassedOver : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label.text = textPassedOver
    }
    

    @IBAction func replyButton(_ sender: Any) {
       
        delegate?.replyReceived(textPassedOver: replyTextView.text!)
        
        dismiss(animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
