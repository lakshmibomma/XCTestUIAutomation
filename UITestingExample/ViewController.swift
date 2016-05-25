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
    @IBOutlet weak var carsTableView: UITableView!

    
    var  cars = [String]()
    var newCar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cars = ["BMW","Audi","Volkswagen","Honda"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*Action methods*/
    @IBAction func onClick(sender: AnyObject)
    {
        copyButton.setTitle(textField.text, forState: UIControlState.Normal)

        self.newCar =  textField.text!;
        cars.append(self.newCar)
        carsTableView.reloadData()
        
    }
    
    /*Table view data source and delegate methods*/
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 2
        return cars.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 3
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath) 
        
        cell.textLabel!.text = cars[indexPath.row]  
        return cell
    }
}

