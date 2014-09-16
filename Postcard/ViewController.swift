//
//  ViewController.swift
//  Postcard
//
//  Created by Randy on 14.09.14.
//  Copyright (c) 2014 Randy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostcardButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text;
        messageLabel.hidden = false;
        messageLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        nameLabel.text = "Nachricht von " + enterNameTextField.text + ":"
        nameLabel.textColor = UIColor.greenColor()
        enterNameTextField.text = "";
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder()
    }

}

