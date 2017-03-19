//
//  GLNNewCardDeckTableViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/13/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNNewCardDeckTableViewController: UITableViewController, UITextFieldDelegate {
    
    var newDeckTempData: Dictionary<String, String>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.newDeckTempData = ["deckName":"", "className":"", "instructorName":""]
        self.clearsSelectionOnViewWillAppear = false
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
            return 3 // we ask for a name, class, and class instructor
        } else {
            return 1 // just the continue button
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserFormInputCell", for: indexPath) as! GLNUserFormInputTableViewCell

            // set shared properties of all of our table cells (tag, delegate, return key type)
            cell.txtFieldCellInput.tag = indexPath.row
            cell.txtFieldCellInput.delegate = self
            cell.txtFieldCellInput.returnKeyType = UIReturnKeyType.next
            cell.txtFieldCellInput.keyboardType = UIKeyboardType.asciiCapable
            
            if indexPath.row == 0 {
                cell.lblCellDescription.text = "Deck Name"
                cell.txtFieldCellInput.placeholder = "A name for this deck"
            } else if indexPath.row == 1 {
                cell.lblCellDescription.text = "Class"
                cell.txtFieldCellInput.placeholder = "What class is this for?"
            } else if indexPath.row == 2 {
                cell.lblCellDescription.text = "Instructor"
                cell.txtFieldCellInput.placeholder = "Who teaches this class?"
                cell.txtFieldCellInput.returnKeyType = UIReturnKeyType.continue
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewDeckContinueCell", for: indexPath)
            cell.textLabel?.text = "Continue"
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88
        } else {
            return 44
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let row = tableView.cellForRow(at: indexPath) as! GLNUserFormInputTableViewCell
            row.txtFieldCellInput.becomeFirstResponder()
        } else {
            handleContinueAction()
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.handleResignFirstResponder(resigningFirstResponder: textField)
        return true
    }
    
    // MARK: - Functions
    
    func handleResignFirstResponder(resigningFirstResponder: UITextField) {
        
        // based on the tag, set the data the user provided in the temp dictionary
        if resigningFirstResponder.tag == 0 {
            self.newDeckTempData["deckName"] = resigningFirstResponder.text!
        } else if resigningFirstResponder.tag == 1 {
            self.newDeckTempData["className"] = resigningFirstResponder.text!
        } else if resigningFirstResponder.tag == 2 {
            self.newDeckTempData["instructorName"] = resigningFirstResponder.text!
        }
        
        // get the tag of the resigning first responder, increment by one to find the next one.
        
        // if it's the last one, don't do anything.
        let nextRow = resigningFirstResponder.tag + 1
        
        // is there a next row? If not, don't do anything, and allow the first responder to resign.
        if (nextRow < self.tableView.numberOfRows(inSection: 0)) {
            let nextTabelViewCell = self.tableView.cellForRow(at: IndexPath.init(row: nextRow, section: 0)) as! GLNUserFormInputTableViewCell
            nextTabelViewCell.txtFieldCellInput.becomeFirstResponder()
        } else {
            resigningFirstResponder.resignFirstResponder()
        }
    }
    
    func handleContinueAction() {
        // Fill in the deets – persist everything from the temp dictionary to a new deck instance.
        let newDeck = GLNCardDeck.init(ownerId: 1, name: self.newDeckTempData["deckName"]!, deckClass: self.newDeckTempData["className"]!, instructor: self.newDeckTempData["instructorName"]!, createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")
        
        
        GLNCardController.sharedController.newCardDeck(deck: newDeck)
        
        self.performSegue(withIdentifier: "UnwindNewDeckToCardDecks", sender: self)
    }

}
