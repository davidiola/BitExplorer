//
//  alphabetViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import PopupDialog

class alphabetViewController: UIViewController {
    
    @IBOutlet weak var buttonA: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func touchA(_ sender: Any) {
        
        let title = "Addresses"
        let message = "A Bitcoin address is a sequence of letters and numbers that identifies the sender/recipient of a Bitcoin transaction.  Anyone can have any amount of different Bitcoin addresses.  QR codes are used to easily represent addresses. "
        let image = UIImage(named: "1-7wxHSSi9dDy36ODXRSacNA.png")
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message, image: image)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup.addButtons([buttonOne])
        self.present(popup, animated: true, completion: nil)


    }
    
    @IBAction func touchB(_ sender: Any) {
        
        let title = "Blockchain"
        let message = "The Blockchain is the public ledger that underpins the financial network of Bitcoin.  This structure proved to be an elegant solution to the double-spending problem in the digital currency space."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)
        

        
        
    }
    
    @IBAction func touchC(_ sender: Any) {
        
        let title = "Cryptocurrency"
        let message = "A Cryptocurrency is a common term for any digital currency.  Some common Crypotcurrencies include: Bitcoin, Ethereum, Litecoin, and Dogecoin."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)
        
        

        
        
    }
    
    @IBAction func touchD(_ sender: Any) {
        
        let title = "Difficulty"
        let message = "Bitcoin difficulty refers to the slowly increasing hash rate necessary to mine a block.  For instance, expensive mining rigs used years ago are now completely obsolete due to Bitcoin's continuously rising network difficulty."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchE(_ sender: UIButton) {
        
        let title = "Exchange"
        let message = "Exchanges are places where people can exchange Bitcoin for other currencies and vice versa.  One of the first popular exchanges was Mt. Gox, popularized by Mark Karpeles.  Mt. Gox was hacked and did significant damage to Bitcoin's reputation and price."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchF(_ sender: UIButton) {
        
        //picture here would be cool
        
        let title = "Farming"
        let message = "Farming refers to the strategy many early Bitcoiners developed by setting up tons of hardware solely dedicated to mining Bitcoin.  These mining rigs usually cost a lot of electricity and the heat dissapated had to be cooled by fans."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchG(_ sender: UIButton) {
        
        let title = "Gambling"
        let message = "Due to the untraceable nature of Bitcoin, it fittingly grew popular online thorugh Gambling platforms that needed to avoid U.S. Gambling laws."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
    }
    
    @IBAction func touchH(_ sender: UIButton) {
        
        let title = "Halving"
        let message = "Because of the way Bitcoin's code was written, approximately every 4 years the block reward (starting at 50 BTC) halves.  This ensures that at some point the maximum 21 million Bitcoin will circulate, no more, no less."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
    }
    
    @IBAction func touchI(_ sender: UIButton) {
        
        
        let title = "India"
        let message = "The failure of centralized monetary systems has played a significant part in Bitcoin's development.  When the government in India withdrew Rupee notes many citizens decided to shift their savings into Bitcoin where its value can't be jeopardized by the government."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    
    @IBAction func touchJ(_ sender: UIButton) {
        
        let title = "Jesus"
        let message = "Roger Ver earned the name of Bitcoin Jesus by fully supporting the cryptocurrency and its community in its earliest days.  Ver owns the domain name bitcoin.com."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchK(_ sender: UIButton) {
        
        let title = "Key"
        let message = "Bitcoin addresses rely on public-key cryptography.  Bitcoin keys can either be public or private.  Public keys are used to identify an address while private keys prove ownership of an address.  Private keys should never be shared with others.  A wallet's security is compromised if shared."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
        
    }
    
    @IBAction func touchL(_ sender: UIButton) {
        
        let title = "Lightning"
        let message = "The Bitcoin Lightning Network is a proposed solution to improve the speed of the Bitcoin network and block confirmations."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchM(_ sender: UIButton) {
        
        
        let title = "Mining"
        let message = "Bitcoin mining is the process of a computer attempting to solve the network's SHA-256 algorithm.  The machine to solve the algorithm first is rewarded with Bitcoin while other computers check their partner's work and ensure its legitimacy."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
    }
    
    @IBAction func touchN(_ sender: UIButton) {
        
        
        let title = "Node"
        let message = "A node refers to any computer connected to the Bitcoin network.  Full nodes refer to nodes who contain copies of the entire blockchain, not just a portion."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchO(_ sender: UIButton) {
        
        let title = "Open Source"
        let message = "Bitcoin is open source, meaning that the source code for the technology is freely available online to reuse and redistribute.  This has spurred the creation of many Altcoins."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchP(_ sender: UIButton) {
        
        let title = "Price"
        let message = "Bitcoin's humble beginnings had each bitcoin priced at less than a dollar.  The first Bitcoin purchase was $25 worth of Pizza in exchange for 10,000 BTC.  10,000 Bitcoin have a market value of ~ 12 Million USD at the time of writing."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchQ(_ sender: UIButton) {
        
        let title = "QR Code"
        let message = "In order to ease the process of sending and receiving Bitcoin, addresses can be represented by their corresponding QR code.  Most mobile wallets allow users to scan these QR codes in order to expedite transactions."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchR(_ sender: UIButton) {
        
        
        let title = "Regulation"
        let message = "With Bitcoin rising in popularity governments are trying to decide how to impose boundaries around the usage of the currency.  Bitcoin regulation is a hot topic around the community and could be a big determinant in how successful the currency becomes."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
        
    }
    
    @IBAction func touchS(_ sender: UIButton) {
        
        let title = "Satoshi"
        let message = "Satoshi Nakamoto is the pseudonym behind the creator of Bitcoin and its brilliant technology.  He is rumored to own more than $1 Billion worth of Bitcoin.  His true identity has never been uncovered."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
        
    }
    
    
    @IBAction func touchT(_ sender: UIButton) {
        
        let title = "Turmoil"
        let message = "Bitcoin's success has not been without roadbumps along the way.  Instability & hacked Bitcoin exchanges have led to massive price dips.  Also, Bitcoin's price is at the mercy of many factors, one of which being the Chinese (and other) governemnt(s)."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
        
    }
    
    @IBAction func touchU(_ sender: UIButton) {
        
        let title = "Ulbricht"
        let message = "Some would argue Bitcoin rose to fame due to Ross Ulbricht and his popular Silk Road underground web marketplace.  Ulbricht exploited the anonymous foundation of the currency which allowed him to create an environment free from government control."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchV(_ sender: UIButton) {
        
        let title = "Venezuela"
        let message = "Popularity of Bitcoin has escalated in Venezuela (and S. America in general) due to unstable local currencies.  Citizens are fed up with losing their money to their government and are turning to decentralized systems."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    @IBAction func touchW(_ sender: Any) {
        
        let title = "Winklevoss"
        let message = "A name you might be familiar with, the Winklevoss twins are heavy investors and believers in Bitcoin.  The dynamic duo has sponsored many Bitcoin related startups and is now looking to create a Bitcoin ETF."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
    }
    
    @IBAction func touchX(_ sender: UIButton) {
        
        let title = "Xapo"
        let message = "Argentinian native, Wences Casares became obsessed with Bitcoin after becoming frustrated with the volatile exchange rate of the peso.  Casares created Xapo and Lemon, both Bitcoin related startups and continues to be a figurehead and leader in the community."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    
    @IBAction func touchY(_ sender: UIButton) {
        
        let title = "Yuan"
        let message = "The prices of the Chinese Yuan and Bitcoin seem to have a negative correlation.  This interesting relationship will be quite a phenomenon to follow as time continues to progress."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
        
    }
    
    @IBAction func touchZ(_ sender: UIButton) {
        
        let title = "Zcash"
        let message = "One of the cryptocurrencies that spawned as a result of Bitcoin is Zcash.  Zcash boasts an even more anonymous platform for transferring money, building on what some see as Bitcoin's biggest strength."
        // Create the dialog
        let popup2 = PopupDialog(title: title, message: message)
        
        // Create buttons
        let buttonOne = CancelButton(title: "Interesting!") {
            
        }
        
        popup2.addButtons([buttonOne])
        self.present(popup2, animated: true, completion: nil)

        
        
    }
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
