//
//  GLNDeckDetailTableViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/14/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNDeckDetailTableViewController: UITableViewController {

    weak var cardDeck: GLNCardDeck?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = cardDeck?.deckName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        } else {
            return self.cardDeck!.questionInstances.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StartQuizCell", for: indexPath)
            
            cell.textLabel?.text = "Start Quiz"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DeckDetailCell", for: indexPath)

            let card = cardDeck?.questionInstances[indexPath.row]
            cell.textLabel?.text = card?.questionText
            cell.detailTextLabel?.text = card?.answerText

            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 0) {
            // start a quiz based on the current deck
            self.performSegue(withIdentifier: "ShowQuizSegue", sender: self)
        } else {
            // if the user selects one of the cells in this section, present them with the
            // EDIT question instance view controller
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    @IBAction func unwindToDeckDetail(segue: UIStoryboardSegue) {
        // given that we're returning to the decks from elsewhere, this is a good time to reload our datasource.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowQuizSegue" {
            let destination = segue.destination as! UINavigationController
            let viewController = destination.viewControllers[0] as! GLNQuizViewController
            viewController.cardDeck = self.cardDeck
            
        }
    }

}
