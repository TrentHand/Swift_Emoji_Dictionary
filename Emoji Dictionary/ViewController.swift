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
    var emojis = ["😇","🤡","😡","🤢","👻","🐒"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //passing the array into the cells.  indexPath.row aligns the item at each index with a row and prints it accordingly
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

