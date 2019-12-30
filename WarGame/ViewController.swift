//
//  ViewController.swift
//  WarGame
//
//  Created by Sam Button on 12/29/19.
//  Copyright © 2019 Sam Button. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftimageview: UIImageView!
    @IBOutlet weak var rightimageview: UIImageView!
    @IBOutlet weak var leftscorelabel: UILabel!
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dealtap(_ sender: Any) {
        // Randomize nubers.
        let leftNumber = Int(arc4random_uniform(12)) + 2
        let rightNumber = Int(arc4random_uniform(12)) + 2
        // Update images.
        leftimageview.image = UIImage(named: "card\(leftNumber)")
        rightimageview.image = UIImage(named: "card\(rightNumber)")
        // Update scores
        if (leftNumber > rightNumber) {
            leftScore += 1;
            leftscorelabel.text = String(leftScore)
        } else if (leftNumber < rightNumber) {
            rightScore += 1;
            rightscorelabel.text = String(rightScore)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

