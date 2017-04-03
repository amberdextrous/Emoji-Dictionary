//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Amber Groton on 3/7/17.
//  Copyright © 2017 Beautiful Anomaly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var daCoolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        daCoolTableView.dataSource = self
        daCoolTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🦄"
        emoji1.birthYear = 2009
        emoji1.category = "Animals"
        emoji1.definition = "A fabulous unicorn"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2011
        emoji2.category = "Humor"
        emoji2.definition = "A happy little doo-doot"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🏖"
        emoji3.birthYear = 2007
        emoji3.category = "Places"
        emoji3.definition = "Where I wish I was right now"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤦‍♀️"
        emoji4.birthYear = 2016
        emoji4.category = "People"
        emoji4.definition = "Me at work 80% of the time"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐕"
        emoji5.birthYear = 2014
        emoji5.category = "Animals"
        emoji5.definition = "Doge!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐋"
        emoji6.birthYear = 2013
        emoji6.category = "Animals"
        emoji6.definition = "My water bottle's spirit animal"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
}

