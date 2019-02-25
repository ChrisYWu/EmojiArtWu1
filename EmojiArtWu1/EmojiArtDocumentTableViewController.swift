//
//  EmojiArtDocumentTableViewController.swift
//  EmojiArtWu1
//
//  Created by Chris Wu on 2/23/19.
//  Copyright © 2019 KDP. All rights reserved.
//

import UIKit

class EmojiArtDocumentTableViewController: UITableViewController {
    
    var emojiArtDocuments = ["One", "Two", "Three"]
    
    // MARK: - EmojiArtTable view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArtDocuments.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = emojiArtDocuments[indexPath.row]

        return cell
    }

    @IBAction func addEmojiArt(_ sender: UIBarButtonItem) {
        emojiArtDocuments.append("Untitled".madeUnique(withRespectTo: emojiArtDocuments))
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Delete the row from data source
            emojiArtDocuments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if splitViewController?.preferredDisplayMode != .primaryOverlay {
            splitViewController?.preferredDisplayMode = .primaryOverlay
        }
    }
}
