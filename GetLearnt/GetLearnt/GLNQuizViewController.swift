//
//  GLNVQuizViewController.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/14/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNQuizViewController: UIViewController {

    weak var cardDeck: GLNCardDeck?
    @IBOutlet weak var imgQuestionMedia: UIImageView!
    @IBOutlet weak var imgAnswerMedia: UIImageView!
    @IBOutlet weak var txtViewQuestion: UITextView!
    @IBOutlet weak var txtViewAnswer: UITextView!
    var currentQuizPosition = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.startFromBeginning()
        self.hideUnusedUIElementsForCard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnDonePress(_ sender: Any) {
        self.performSegue(withIdentifier: "UnwindToDeckDetail", sender: self)
    }

    @IBAction func btnNextPress(_ sender: Any) {
        self.txtViewAnswer.alpha = 0.0
        nextQuestion()
    }
    
    @IBAction func btnShowAnswer(_ sender: Any) {
        // show the answer
        self.txtViewAnswer.alpha = 1.0
    }
    
    func startFromBeginning() {
        self.navigationItem.title = "Question \(currentQuizPosition+1) of \(self.cardDeck!.questionInstances.count)"
        self.txtViewAnswer.text = cardDeck?.questionInstances[0].answerText
        self.txtViewQuestion.text = cardDeck?.questionInstances[0].questionText
        self.txtViewAnswer.alpha = 0.0
        self.imgQuestionMedia.image = cardDeck?.questionInstances[currentQuizPosition].questionImage
    }
    
    func nextQuestion() {
        // is the next position valid within the question instances array range? if so, go ahead and increment...
        if ((currentQuizPosition + 1) < (self.cardDeck?.questionInstances.count)!) {
            currentQuizPosition += 1
        } else {
            // otherwise, reset to 0 for now and start the quiz over
            displayRandomizeConfirmation(true)
            currentQuizPosition = 0
            return
        }
        self.navigationItem.title = "Question \(currentQuizPosition+1) of \(self.cardDeck!.questionInstances.count)"
        self.txtViewAnswer.text = cardDeck?.questionInstances[currentQuizPosition].answerText
        self.txtViewQuestion.text = cardDeck?.questionInstances[currentQuizPosition].questionText
        // then reallocate with new images
        
        self.imgQuestionMedia.image = cardDeck?.questionInstances[currentQuizPosition].questionImage
    }
    
    func hideUnusedUIElementsForCard() {
        // check if the question text is empty... if it is, just hide the text view
        if self.txtViewQuestion.text.characters.count == 0 {
            self.txtViewQuestion.isHidden = true
        }
        
        // similarly, if the Question image view doesn't contain an image, hide it.
        if self.imgQuestionMedia.image == nil {
            self.imgQuestionMedia.isHidden = true
        }
    }
    
    func displayRandomizeConfirmation(_ outOfQuestions: Bool) {
        let message = "You answered all of the questions. Do you want to restart and give it another go?"
        let alert = UIAlertController.init(title: "That's it!", message: message , preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "Yeah!",
                                      style: UIAlertActionStyle.default,
                                      handler:randomizeFromAlert
        ))
        alert.addAction(UIAlertAction.init(title: "Nope",
                                           style: UIAlertActionStyle.cancel,
                                           handler: returnToYourDecks)
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    func randomizeFromAlert(_ alert: UIAlertAction!) {
        print("Started Over!")
        self.startFromBeginning()
    }
    
    func returnToYourDecks(_ alert: UIAlertAction!) {
        self.performSegue(withIdentifier: "UnwindToDeckDetail", sender: self)
    }


}
