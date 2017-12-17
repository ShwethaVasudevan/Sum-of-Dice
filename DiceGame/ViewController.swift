//
//  ViewController.swift
//  DiceGame
//
//  Created by anuj babu on 17/12/17.
//  Copyright © 2017 TagTechLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var leftDie: UIImageView!
    @IBOutlet weak var rightDie: UIImageView!
    @IBOutlet weak var total: UILabel!
    
    var dieArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        
        let leftNumber = Int(arc4random_uniform(6))
        let rightNumber = Int(arc4random_uniform(6))
        
        let sum:Int = leftNumber + rightNumber + 2
        
        leftDie.image = UIImage(named: dieArray[leftNumber])
        rightDie.image = UIImage(named: dieArray[rightNumber])
        
        total.text = "\(sum)"
        
        
    }

}

