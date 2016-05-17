//
//  ViewController.swift
//  UITestingExample
//
//  Created by Lakshmi Bomma on 5/17/16.
//  Copyright © 2016 riis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onClick(sender: AnyObject)
    {
        copyButton.setTitle(textField.text, forState: UIControlState.Normal)
    }
}

