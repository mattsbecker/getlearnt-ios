//
//  QuestionInstance.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

class GLNQuestionInstance {
    var cardId: Int
    var cardDeckId: Int
    var questionText: String?
    var questionDataURL: String? // more than likely, we'll load media resource from the web
    var questionImage: UIImage?
    var answerText: String?
    var answerDataURL: String? // more than likely, we'll load media resource from the web
    var answerImage: UIImage?
    var createdAt: String
    var updatedAt: String
    
    init(id: Int, deckId: Int, createdAt: String, updatedAt: String) {
        self.cardId = id
        self.cardDeckId = deckId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    
    /**
     Get the image at the specified URL. Returns nil if it couldn't be obtained.
     */
    
    func getImageMediaFromStringURL(url: String) -> UIImage {
        // get the image from the URL contained in the object. DON'T DO ALL OF THESE AT THE SAME TIME.
        
        let theImage = UIImage.init(contentsOfFile: url)
        return theImage!
        
    }
}
