//
//  convertViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import DropDown

class convertViewController: UIViewController {
    
    @IBOutlet weak var dropdownButton: UIButton!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var arrowLabel: UILabel!
    @IBOutlet weak var btcLabel: UILabel!
    @IBOutlet weak var equals: UILabel!
    @IBOutlet weak var bitcoinAmount: UILabel!
    @IBOutlet weak var otherAmount: UILabel!

    var factor: Float!
    
    let dropdown = DropDown()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(convertViewController.dismissKeyboard)))
        
        
        dropdownButton.titleLabel?.font = UIFont.fontAwesome(ofSize: 30)
        dropdownButton.setTitle(String.fontAwesomeIcon(name: .caretDown), for: .normal)
        dropdown.anchorView = dropdownButton
        dropdown.dataSource = ["USD", "Euro", "Yen", "Pound", "Litecoin", "Ethereum"]
        
        arrowLabel.font = UIFont.fontAwesome(ofSize: 40)
        arrowLabel.text = String.fontAwesomeIcon(name: .arrowsH)
        
        btcLabel.font = UIFont.fontAwesome(ofSize: 20)
        btcLabel.text = String.fontAwesomeIcon(name: .btc)
        
        self.factor = 1180.0
        
        
        
        
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
    @IBAction func dropdownTriggered(_ sender: Any) {
        
        dropdown.show()
        dropdown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
            
            self.currencyLabel.text = item
            
            if (index == 0) {
                
                self.factor = 1180.0
            }
            
            if (index == 1) {
                
                self.factor = 1096.45
                
            }
            
            if (index == 2) {
                
                self.factor = 129864.99
                
            }
            
            if (index == 3) {
                
                self.factor = 929.84
                
                
            }
            
            if (index == 4) {
                
                self.factor = 296.491
                
            }
            
            if (index == 5) {
                
                
                self.factor = 85.186
                
            }
        
        }
        
        

        
    }
    
    func dismissKeyboard() {
        
        numberField.resignFirstResponder()
        
        
    }
    
    
    @IBAction func endEdit(_ sender: Any) {
        
        otherAmount.text = numberField.text
        let before = Float(numberField.text!)
        print(before)
        if (before != nil) {
            
             bitcoinAmount.text = String((before! / self.factor))
            
        }
        
        else {
            
            displayMyAlertMessage("Enter a valid number");
            
        }
       
        
        
        
        
    }
    
    func displayMyAlertMessage(_ userMessage:String) {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
        
        
        
        
        
    }
    
    
    @IBAction func tabBack(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }


}
