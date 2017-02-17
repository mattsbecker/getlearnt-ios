//
//  CardDeck.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation

class GLNCardDeck {
    var deckId: Int!
    var deckOwnerUserId: Int
    var deckName: String
    var deckClass: String
    var deckClassInstructor: String
    var deckCreatedAt: String // database datetime formatted
    var deckUpdatedAt: String // database datetime formatted
    var deckQuizCode: String // Quiz code for the deck
    var questionInstances: Array<GLNQuestionInstance>! // Array of GLNQuestionInstances (dicts) provided by the server. May be nil.

    init(ownerId: Int, name: String, deckClass: String, instructor: String, createdAt: String, updatedAt: String, quizCode: String) {
        self.deckOwnerUserId = ownerId
        self.deckName = name
        self.deckClass = deckClass
        self.deckClassInstructor = instructor
        self.deckCreatedAt = createdAt
        self.deckUpdatedAt = updatedAt
        self.deckQuizCode = quizCode
    }
}
