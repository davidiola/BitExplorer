//
//  mainViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonPlus.titleLabel?.font = UIFont.fontAwesome(ofSize: 30)
        buttonPlus.setTitle(String.fontAwesomeIcon(name: .plusSquare), for: .normal)
        
        buttonLogin.titleLabel?.font = UIFont.fontAwesome(ofSize: 30)
    buttonLogin.setTitle(String.fontAwesomeIcon(name: .signIn), for: .normal)
        
        
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
