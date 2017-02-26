//
//  faqViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/26/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import PopupDialog

class faqViewController: UIViewController {

    @IBOutlet weak var darkwebButton: UIButton!
    @IBOutlet weak var richButton: UIButton!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var hackButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        darkwebButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 10)
        
        richButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 13)
        
        buyButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 15)
        
        hackButton.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 9)
        
        
        

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
    
    @IBAction func goBack(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func darkPopup(_ sender: Any) {
        
        let title = "Can I only use Bitcoin on the Dark Web?"
        let message = "No.  Bitcoin was popularized by the Silk Road/Dark Web because of its anonymity.  Bitcoin has many more legitimate uses and can be spent on websites or with any vendor that accepts Bitcoin.  Overstock.com, Ebay, Amazon, Target, CVS, Wordpress, Paypal, Apple.. etc all accept Bitcoin as a form of payment."
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Great.") {
            
        }
        
        popup.addButtons([buttonOne])
        self.present(popup, animated: true, completion: nil)

        
        
    }
    
    
    @IBAction func richPopup(_ sender: Any) {
        
        let title = "Can I get rich off Bitcoin?"
        let message = "If it's too good to be true, it probably is.  Unless you bought tons of Bitcoin in 2009, the answer is likely, no.  Investors speculate on the price of Bitcoin continually but no one truly knows where the price is going.  Invest in Bitcoin if you believe in the technology and community, not if you're trying to make a quick buck."
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Great.") {
            
        }
        
        popup.addButtons([buttonOne])
        self.present(popup, animated: true, completion: nil)

        
        
    }
    
    @IBAction func buyBitcoin(_ sender: Any) {
        
        
        let title = "How do I buy/sell Bitcoin?"
        let message = "If you want to obtain Bitcoin you can do so through any exchange, Coinbase is a great one, or you can buy Bitcoins off another individual through a site like localbitcoins.com.  Selling is a similar process, the easiest way to Buy/Sell is finding a partner willing to exchange currency with you."
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Great.") {
            
        }
        
        popup.addButtons([buttonOne])
        self.present(popup, animated: true, completion: nil)
        
        
        
        
    }
    
    @IBAction func hackBitcoin(_ sender: Any) {
        
        
        let title = "Can someone hack my Bitcoin's?"
        let message = "No.  The only way to lose the Bitcoin you own is if you lose the associated private key to the address that your Bitcoin's are stored to.  This is assuming you aren't using a 3rd party wallet provider."
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Great.") {
            
        }
        
        popup.addButtons([buttonOne])
        self.present(popup, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    

}
