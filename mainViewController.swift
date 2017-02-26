//
//  mainViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase




class mainViewController: UIViewController {

    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var userLabel: UILabel!
    
    
    var ref: FIRDatabaseReference!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonPlus.titleLabel?.font = UIFont.fontAwesome(ofSize: 30)
        buttonPlus.setTitle(String.fontAwesomeIcon(name: .plusSquare), for: .normal)
        
        buttonLogin.titleLabel?.font = UIFont.fontAwesome(ofSize: 30)
        buttonLogin.setTitle(String.fontAwesomeIcon(name: .signIn), for: .normal)
    
        
        
        
        
        
        ref = FIRDatabase.database().reference()
        let userUID = FIRAuth.auth()?.currentUser?.uid
        
        print(userUID)
        ref.child("users").child(userUID!).observeSingleEvent(of: .value, with: { (snapshot) in
            
            let value = snapshot.value as? NSDictionary
            let name = value?["First"] as! String
            let lastName = value?["Last"] as! String
            
            print("name is \(name)")
            print ("last is \(lastName)")
            
            self.userLabel.text = name

            
        }) 
        
        
        
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
