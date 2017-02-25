//
//  registerViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class registerViewController: UIViewController {
    
    @IBOutlet weak var iconFirst: UILabel!
    @IBOutlet weak var iconLast: UILabel!
    @IBOutlet weak var iconEmail: UILabel!
    @IBOutlet weak var iconPass: UILabel!
    @IBOutlet weak var iconConfirm: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmField: UITextField!
    
    var ref: FIRDatabaseReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(registerViewController.dismissKeyboard)))
        
        iconFirst.font = UIFont.fontAwesome(ofSize: 20)
        iconFirst.text = String.fontAwesomeIcon(name: .user)
        
        iconLast.font = UIFont.fontAwesome(ofSize: 20)
        iconLast.text = String.fontAwesomeIcon(name: .user)
        
        iconEmail.font = UIFont.fontAwesome(ofSize: 18)
        iconEmail.text = String.fontAwesomeIcon(name: .envelope)
        
        iconPass.font = UIFont.fontAwesome(ofSize: 20)
        iconPass.text = String.fontAwesomeIcon(name: .unlockAlt)
        
        iconConfirm.font = UIFont.fontAwesome(ofSize: 20)
        iconConfirm.text = String.fontAwesomeIcon(name: .key)
        
        ref = FIRDatabase.database().reference()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil);

        
    }
    
    func dismissKeyboard() {
        
        firstName.resignFirstResponder()
        lastName.resignFirstResponder()
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        confirmField.resignFirstResponder()
        
        
        
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        
        let firstname = firstName.text;
        let lastname = lastName.text;
        let email = emailField.text;
        let password = passwordField.text;
        let confirm = confirmField.text;
        
        
        if ( (firstname!.isEmpty || lastname!.isEmpty || email!.isEmpty || password!.isEmpty || confirm!.isEmpty)) {
            
            //display alert message
            displayMyAlertMessage("All fields are required");
            return;
            
            
        }
        
        if (password != confirm) {
            
            //Display alert message
            displayMyAlertMessage("Passwords do not match");
            
            return;
            
        }
        
        
        // store on Firebase
        
        let myAlert = UIAlertController(title: "Alert", message: "Registration is Successful", preferredStyle: UIAlertControllerStyle.alert);
        
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) {
            
            action in
            self.dismiss(animated: true, completion: nil)
            
            
            
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion: nil);


        
        
    }
    
    
    func displayMyAlertMessage(_ userMessage:String) {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
        
        
        
        
        
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
