//
//  ViewController.swift
//  RandomNumber
//
//  Created by Keith and Marshneille Lopez on 11/14/16.
//  Copyright © 2016 icc. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var txtStartNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnGenerate: UIButton!
    @IBOutlet weak var txtRange: UITextField!
    @IBOutlet weak var txtEndNumber: UITextField!
    
    
    @IBAction func generateRandom(_ sender: Any) {
        
        let lower = Int((txtStartNumber?.text)!)
        let upper = Int((txtEndNumber?.text)!)
        
        let distribution = GKRandomDistribution(lowestValue: lower!, highestValue: upper!)
        lblResult.text! = Int(distribution.nextInt()).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateRandomNumber(sender: UIButton) {
        var randomNumber: Int32
        randomNumber = Int32(Int(arc4random_uniform(100)))
        lblResult.text = randomNumber.description
    }
    
}

