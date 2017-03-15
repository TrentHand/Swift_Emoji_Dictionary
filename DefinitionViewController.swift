//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Trent Hand on 3/15/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    var emoji = "NO Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji
        
        if emoji == "😇" {
        definitionLabel.text = "A little angel"
        }
        if emoji == "🤡" {
            definitionLabel.text = "A creepy clown"
        }
        if emoji == "😡" {
            definitionLabel.text = "An angry face"
        }
        if emoji == "🤢" {
            definitionLabel.text = "Food poison Frank"
        }
        if emoji == "👻" {
            definitionLabel.text = "A dancing ghost"
        }
        if emoji == "🐒" {
            definitionLabel.text = "An adorable monkey"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
