//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Trent Hand on 3/15/17.
//  Copyright © 2017 Trent Hand. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji.emojiString
        birthYearLabel.text = "Created Date: \(emoji.createdDate)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
