//
//  GLNCardDecksCollectionViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class GLNCardDecksCollectionViewController: UICollectionViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        let cardDeckCount = appDelegate.availableCardDecks.count
        return cardDeckCount
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardDeckCollectionViewCell", for: indexPath) as! GLNCardDeckCollectionViewCell
    
        // get a count of the total number of cards, and ensure there are questions in the deck
        var cardCount = 0
        if appDelegate.availableCardDecks[indexPath.row].questionInstances != nil {
            cardCount = appDelegate.availableCardDecks[indexPath.row].questionInstances.count
        }

        /* If there are cards in the deck, show total count in the cell.
            Otherwise, show "no cards".
         */
        cell.lblCardDeckName.text = appDelegate.availableCardDecks[indexPath.row].deckName
        if cardCount > 0 {
            cell.lblCardCount.text = "\(cardCount) Cards"
        } else {
            cell.lblCardCount.text = "No Cards"
        }
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "YourDecksToDeckDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "YourDecksToDeckDetailSegue" {
            let destination = segue.destination as! GLNDeckDetailTableViewController
            let selectedItemPath = self.collectionView?.indexPathsForSelectedItems?[0]
            // get the cards for the deck and give them to the destination view controller
            
            destination.cardDeck = appDelegate.availableCardDecks[selectedItemPath!.row]
        }
    }


    @IBAction func unwindToCardDecks(segue: UIStoryboardSegue) {
        // given that we're returning to the decks from elsewhere, this is a good time to reload our datasource.
        self.collectionView?.reloadData()
    }

    
    @IBAction func btnNewCardDeckPress(_ sender: Any) {
        self.performSegue(withIdentifier: "YourDecksToNewDeckSegue", sender: self)
    }
    
    @IBAction func btnLogoutPress(_ sender: Any) {
        GLNUserDefaultsWrapper.sharedInstance.setBooleanValueForKey(value: false, key: "isLoggedIn")
        self.performSegue(withIdentifier: "UnwindToGetStartedSegue", sender: self)
    }
}
