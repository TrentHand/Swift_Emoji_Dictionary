//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Trent Hand on 3/15/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
//    array to load emojis into the mainTableView table
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        //passing the array into the cells.  indexPath.row aligns the item at each index with a row and prints it accordingly
        cell.textLabel?.text = emoji.emojiString
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //loops through the emojis array to assign each emoji to a var.  helps target what the user is clicking
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    //runs between switching segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //defVC is a short variable to reference DefinitionViewController
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//this is pulling our Emoji class from emoji.swift and building an array out of those objects
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiString = "😇"
        emoji1.createdDate = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A cute angel"

        let emoji2 = Emoji()
        emoji2.emojiString = "🤡"
        emoji2.createdDate = 2012
        emoji2.category = "Clown"
        emoji2.definition = "A creepy clown"
        
        let emoji3 = Emoji()
        emoji3.emojiString = "😡"
        emoji3.createdDate = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "An angry face"
        
        let emoji4 = Emoji()
        emoji4.emojiString = "🤢"
        emoji4.createdDate = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "Food poison Frank"
        
        let emoji5 = Emoji()
        emoji5.emojiString = "👻"
        emoji5.createdDate = 2013
        emoji5.category = "Supernatural"
        emoji5.definition = "The dancing ghost"

        let emoji6 = Emoji()
        emoji6.emojiString = "🐒"
        emoji6.createdDate = 2016
        emoji6.category = "Animal"
        emoji6.definition = "An adorable monkey"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
}
