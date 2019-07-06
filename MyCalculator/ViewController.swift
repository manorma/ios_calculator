//
//  ViewController.swift
//  MyCalculator
//
//  Created by Manorma Bharti on 03/07/19.
//  Copyright © 2019 appcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performOpertaion = false
    var operation:Int = 0
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if performOpertaion == true{
            label.text = String(sender.tag)
            numberOnScreen = Double(label.text!)!
            performOpertaion = false;
        }
        else{
        label.text = label.text! + String(sender.tag)
        numberOnScreen = Double(label.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {

        if label.text != "" && sender.tag != 15 && sender.tag != 20 {
            previousNumber = Double(label.text!)!
        
            if sender.tag == 11//add
            {
                label.text = "+"
                
            }
            else if sender.tag == 12 //multiply
            {
                 label.text = "*"
            }
            else if sender.tag == 13 //div
            {
                 label.text = "/"
            }
            else if sender.tag == 14 //subs
            {
                 label.text = "-"
            }
            else if sender.tag == 16 //mod
            {
                 label.text = "%"
            }
            else if sender.tag == 17 //log
            {
                 label.text = "log"
            }
            else if sender.tag == 18 //ln
            {
                 label.text = "ln"
            }
            else if sender.tag == 19 //pow
            {
                 label.text = "^"
            }
            
            performOpertaion = true;
            operation = sender.tag
        }
        else if sender.tag == 15
        {
        
            if operation == 11
            {
                label.text = String(previousNumber + numberOnScreen)
                
            }
            else if operation == 12
            {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 13
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 14
            {
            
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 16
            {
                label.text = String(previousNumber.truncatingRemainder(dividingBy: numberOnScreen))
            }
            else if operation == 19
            {
                label.text = String(pow(previousNumber,numberOnScreen))
                
            }
            
        }
        else if sender.tag == 20
        {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            
        }
        
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

