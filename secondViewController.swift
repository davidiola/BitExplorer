//
//  secondViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label1.font = UIFont.fontAwesome(ofSize: 60)
        label1.text = String.fontAwesomeIcon(name: .bitcoin)
        label2.font = UIFont.fontAwesome(ofSize: 60)
        label2.text = String.fontAwesomeIcon(name: .bitcoin)
        
        button1.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button1.setTitle(String.fontAwesomeIcon(name: .fighterJet), for: .normal)
        
        button2.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        button2.setTitle(String.fontAwesomeIcon(name: .warning), for: .normal)
        
        

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
