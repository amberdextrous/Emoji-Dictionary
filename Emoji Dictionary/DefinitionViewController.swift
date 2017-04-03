//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Amber Groton on 3/13/17.
//  Copyright © 2017 Beautiful Anomaly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text  = "Birth Year: \(emoji.birthYear)"
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
