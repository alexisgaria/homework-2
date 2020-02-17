//
//  ViewController.swift
//  homework 2
//
//  Created by Alexis Garia on 2/7/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameFieldString = "Please excuse <name> because his/her <food> made them sick. He/she was <verb> with it. <name> is far to sick to attend <adjective1> and <adjective2> "

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var food: UITextField!
    
    @IBOutlet weak var verb: UITextField!
    
    @IBOutlet weak var adj1: UITextField!

    @IBOutlet weak var adj2: UITextField!

    @IBOutlet weak var output: UITextView!
    
    
    @IBAction func button(_ sender: Any) {
      
        output.text = name.text
        
        output.text = nameFieldString.replacingOccurrences(of: "<name>", with: name.text!)
        
        output.text = output.text?.replacingOccurrences(of: "<food>", with : food.text!)
        
         output.text = output.text?.replacingOccurrences(of: "<verb>", with : verb.text!)
        
         output.text = output.text?.replacingOccurrences(of: "<adjective1>", with : adj1.text!)
        
         output.text = output.text?.replacingOccurrences(of: "<adjective2>", with : adj2.text!)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

