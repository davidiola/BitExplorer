//
//  ViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/24/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import FontAwesome_swift

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button1.setTitle(String.fontAwesomeIcon(name: .paperPlane), for: .normal)
        
        button2.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button2.setTitle(String.fontAwesomeIcon(name: .paperPlane), for: .normal)
        
        button3.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button3.setTitle(String.fontAwesomeIcon(name: .paperPlane), for: .normal)
        
        button4.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button4.setTitle(String.fontAwesomeIcon(name: .paperPlane), for: .normal)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

