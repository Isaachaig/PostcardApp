//
//  ViewController.swift
//  Postcard
//
//  Created by Isaac Haig on 2015-04-25.
//  Copyright (c) 2015 Isaac Haig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messagelabel.hidden = false
        messagelabel.text = enterMessageTextField.text
        messagelabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.resignFirstResponder()
        
        
        
    }

    @IBOutlet weak var nameLabel: UILabel!
}

