//
//  GLNGetStartedViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/11/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNGetStartedViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        // we don't show the navigation bar on this view
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let isLoggedIn = GLNUserDefaultsWrapper.sharedInstance.booleanValueForKey(key: "isLoggedIn")
        if (isLoggedIn) {
            self.performSegue(withIdentifier: "GetStartedToDecksSegue", sender: self)
        } else {
            super.viewWillAppear(animated)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // bring the navigation bar back
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
        Presents a dialog to the user, explaining why it's necessary to create an account.
     */
    @IBAction func btnSignUpWithEmailPress(_ sender: UIButton) {
        // perform the segue to the create account view controller
        self.performSegue(withIdentifier: "GetInfoToSignUpEmailSegue", sender: self)

    }
    
    @IBAction func btnSignInPress(_ sender: UIButton) {
        // perform the segue to the sign in view controller
        self.performSegue(withIdentifier: "GetStartedToSignInSegue", sender: self)
    }
    
    @IBAction func btnExplainAccountPress(_ sender: UIButton) {
        // display the information dialog
        let accountExplanation = "We take your privacy seriously. We'll never post anything on your behalf, nor we will share account information with any other parties. GetLearnt provides valuable study resources for students and non-students alike, and we strive to ensure those resources are shared by verified individuals."
        
        // create the alert controller and the default action
        let explainAlertController = UIAlertController.init(title: "About GetLearnt Accounts", message: accountExplanation, preferredStyle: UIAlertControllerStyle.alert)
        let defaultAlertAction = UIAlertAction.init(title: "Got it!", style: UIAlertActionStyle.cancel) { (UIAlertAction) in
            // dismiss the modal, don't do anything.
        }
        // add the action and present it
        explainAlertController.addAction(defaultAlertAction)
        self.present(explainAlertController, animated: true, completion: nil)
    }
    
    @IBAction func unwindToGetStarted(segue: UIStoryboardSegue) {
        // perform the unwind and start the segue to the decks view controller
    }
}
