//
//  ViewController.swift
//  Postcard
//
//  Created by Scott Munro on 2014-10-01.
//  Copyright (c) 2014 PigPen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameFeild: UITextField!
    @IBOutlet weak var enterMessageTextFeild: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextFeild.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextFeild.text = ""
        enterMessageTextFeild.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

