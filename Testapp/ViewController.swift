//
//  ViewController.swift
//  Testapp
//
//  Created by Ali Hawili on 10/6/14.
//  Copyright (c) 2014 Ali Hawili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
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


    @IBAction func sendMessageButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = .redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState:.Normal)
        
    }
}

