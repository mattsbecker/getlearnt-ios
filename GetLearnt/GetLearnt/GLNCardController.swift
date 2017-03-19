//
//  GLNCardController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/17/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

/**
 Responsible for storing, creating, and retrieving card decks via network requests.
 */

struct GLNCardControllerNotifications {
    static let CardDecksUpdatedFromRemote = "CardControllerCardDecksUpdatedFromRemote"
    static let CardDeckUpdatedFromRemote = "CardControllerCardDeckUpdatedFromRemote"
}

class GLNCardController {
    private var availableDecks: Array<GLNCardDeck>
    
    static let sharedController = GLNCardController()
    
    init() {
        self.availableDecks = Array<GLNCardDeck>()
        // fake some test decks for now... Load the test data
        let testDecks = TestCardDecks.init()
        let surveyThree = testDecks.testDeckSurveyThreeExam2
        
        // append the test data to the array
        self.availableDecks.append(surveyThree)
    }
    
    // MARK: Get/Set Card Deck Convenience methods
    
    /**
     Returns an array of all card decks that are currently available to the user
     */
    func availableCardDecks() -> Array<GLNCardDeck> {
        return self.availableDecks
    }

    /**
     Retrieves updated card decks from the remote API and replaces the existing available decks with the response
     */
    func refreshCardDecksFromRemote() {
        self.handleCardDeckRemoteResponse()
    }

    
    /**
     Adds a new card deck to the available decks
     */

    func newCardDeck(deck: GLNCardDeck) {
        // the new deck that is appended to the array is guaranteed to be non-nil
        self.availableDecks.append(deck)
        return
    }
    
    //MARK: - Network Response Handling
    
    /**
     Retrieves updated card decks from the remote API and replaces the existing available decks with the response
     */
    func handleCardDeckRemoteResponse() {
        // TODO here is where we'll convert a JSON object returned by the server to an array of native GLNCardDeck objects
        
        // Post a notification to any listening objects
        // post a notification to all listeners that the decks have changed
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: GLNCardControllerNotifications.CardDecksUpdatedFromRemote),
                                        object: nil)
    }

    
}
