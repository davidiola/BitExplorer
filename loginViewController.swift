//
//  loginViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class loginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailIcon: UILabel!
    @IBOutlet weak var passwordIcon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailIcon.font = UIFont.fontAwesome(ofSize: 18)
        emailIcon.text = String.fontAwesomeIcon(name: .envelope)
        
        passwordIcon.font = UIFont.fontAwesome(ofSize: 20)
        passwordIcon.text = String.fontAwesomeIcon(name: .unlockAlt)
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(loginViewController.dismissKeyboard)))
        
        
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
    @IBAction func cancelTapped(_ sender: Any) {
        
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func dismissKeyboard() {
        
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let email = emailField.text;
        let password = passwordField.text;
        
        
        //check firebase to login
        //successful login, "name"
        
        FIRAuth.auth()?.signIn(withEmail: email!, password: password!) { (user, error) in
            
            if error == nil {
                
                //edit this
                let myAlert = UIAlertController(title: "Alert", message: "Successful Login", preferredStyle: UIAlertControllerStyle.alert);
                
                
                let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) {
                    
                    action in
                    self.performSegue(withIdentifier: "mainSegue", sender: self)
                    
                    
                    
                }
                
                myAlert.addAction(okAction);
                self.present(myAlert, animated: true, completion: nil);
                
                
                
            }
                
            else {
                
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
                //self.displayMyAlertMessage("Login failed")
                
            }
            
            
        }
        
        return false
        
    }
    
    
}
