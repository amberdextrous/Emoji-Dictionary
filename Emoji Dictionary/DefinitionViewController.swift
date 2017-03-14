//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Amber Groton on 3/13/17.
//  Copyright © 2017 Beautiful Anomaly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "💩" {
            definitionLabel.text = "A happy little doo-doot"
        }
        if emoji == "🦄" {
            definitionLabel.text = "A fabulous unicorn"
        }
        if emoji == "🏖" {
            definitionLabel.text = "Where I wish I was right now"
        }
        if emoji == "🤦‍♀️" {
            definitionLabel.text = "Me at work 80% of the time"
        }
        if emoji == "🐕" {
            definitionLabel.text = "Doge!"
        }
        if emoji == "🐋" {
            definitionLabel.text = "My water bottle's spirit animal"
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
