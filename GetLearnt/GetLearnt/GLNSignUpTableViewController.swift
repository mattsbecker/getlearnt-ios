//
//  GLNSignUpTableViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNSignUpTableViewController: UITableViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 4 // name, email address and password/confirm cells
        } else {
            return 1 // Sign up "Button" cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 88
        } else {
            return 44
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
                cell.lblCellDescription.text = "Name"
                cell.txtFieldCellInput.placeholder = "Your name"
            } else if indexPath.row == 1 {
                cell.lblCellDescription.text = "Email Address"
                cell.txtFieldCellInput.placeholder = "Your email address"
                cell.txtFieldCellInput.keyboardType = UIKeyboardType.emailAddress
            } else if indexPath.row == 2 {
                cell.lblCellDescription.text = "Password"
                cell.txtFieldCellInput.placeholder = "Create a password"
                cell.txtFieldCellInput.isSecureTextEntry = true
            } else if indexPath.row == 3 {
                cell.lblCellDescription.text = "Confirm Password"
                cell.txtFieldCellInput.placeholder = "Enter your password again"
                cell.txtFieldCellInput.isSecureTextEntry = true
                cell.txtFieldCellInput.returnKeyType = UIReturnKeyType.continue
            }
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleCell", for: indexPath)
            cell.textLabel?.text = "Sign Up"
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let row = tableView.cellForRow(at: indexPath) as! GLNUserFormInputTableViewCell
            row.txtFieldCellInput.becomeFirstResponder()
        } else {
            // submit the signup request to the server
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
        GLNUserDefaultsWrapper.sharedInstance.setBooleanValueForKey(value: true, key: GLNDefaultsKeys.LoggedInKey)
        self.performSegue(withIdentifier: "UnwindSignupToGetStartedSegue", sender: self)
    }


}
