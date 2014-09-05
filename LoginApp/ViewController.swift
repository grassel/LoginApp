//
//  ViewController.swift
//  LoginApp
//
//  Created by Guido Grassel on 03/09/14.
//  Copyright (c) 2014 Guido Grassel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var theTextFieldUsername: UITextField!
    @IBOutlet weak var theTextFieldPassword: UITextField!
    @IBOutlet weak var theLabel: UILabel!
    
    @IBAction func theVerifyMethod(sender: AnyObject) {
        var user = "car";
        var passwrd = "black";
        
        if (theTextFieldUsername.text == user) &&
            (theTextFieldPassword.text == passwrd) {
                theLabel.text = "You are logged in OK.";
                theLabel.textColor = UIColor.blackColor();
                println("You are logged in OK.");
        } else {
            theLabel.text = "Your credentials are invalid!";
            theLabel.textColor = UIColor.redColor();
            println("Your credentials are invalid!");
        }
        theTextFieldPassword.resignFirstResponder();
        theTextFieldUsername.resignFirstResponder();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

