//
//  statsViewController.swift
//  BitExplorer
//
//  Created by David Iola on 2/25/17.
//  Copyright © 2017 David Iola. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class statsViewController: UIViewController {
    
    @IBOutlet weak var difficultyLabel: UILabel!
    @IBOutlet weak var blocksLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var marketLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var btcnumLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://blockchain.info/q/getdifficulty").responseString { response in
            
            print("Response String: \(response.result.value)")
            let difficulty: String = response.result.value!

            self.difficultyLabel.text = difficulty
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/getblockcount").responseString { response in
            
            print("Response String: \(response.result.value)")
            let blocks: String = response.result.value!
            
            self.blocksLabel.text = blocks
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/interval").responseString { response in
            
            print("Response String: \(response.result.value)")
            let time: String = response.result.value!
            
            self.numLabel.text = time
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/24hrprice").responseString { response in
            
            print("Response String: \(response.result.value)")
            let price: String = response.result.value!
            
            self.priceLabel.text = price
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/marketcap").responseString { response in
            
            print("Response String: \(response.result.value)")
            let market: String = response.result.value!
            
            self.marketLabel.text = market
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/hashestowin").responseString { response in
            
            print("Response String: \(response.result.value)")
            let winhash: String = response.result.value!
            
            self.winLabel.text = winhash
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/hashestowin").responseString { response in
            
            print("Response String: \(response.result.value)")
            let winhash: String = response.result.value!
            
            self.winLabel.text = winhash
            
            
        }
        
        Alamofire.request("https://blockchain.info/q/24hrbtcsent").responseString { response in
            
            print("Response String: \(response.result.value)")
            let numBTC: String = response.result.value!
            
            self.btcnumLabel.text = numBTC
            
            
        }
        
        
        
        
        

        
        
        
        
        

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
    
   // func getDifficulty
    
    @IBAction func getBack(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
