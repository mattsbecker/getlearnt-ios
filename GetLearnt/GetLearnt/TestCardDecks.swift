//
//  SurveyOfArtHistory3-Cards.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

class TestCardDecks {
    //var testDeckSurveyThreeExam1: GLNCardDeck
    var testDeckSurveyThreeExam2: GLNCardDeck
    var testDeckGeo101: GLNCardDeck
    
    init() {
        self.testDeckSurveyThreeExam2 = GLNCardDeck.init(ownerId: 1, name: "Survey 3 Exam 2", deckClass: "Survey of Art III", instructor: "Instructor Name!", createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")
        
        var questionArray = Array<GLNQuestionInstance>()
        
        let question2 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question2.questionText = ""
        question2.questionImage = UIImage.init(named: "unique-fors-of-continuity")
        question2.answerText = "Umberto Boccioni, Unique Forms of Continuity in Space; Futurism"
        questionArray.append(question2)

        let question1 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question1.questionText = ""
        question1.questionImage = UIImage.init(named: "states-of-mind")
        question1.answerText = "Umberto Boccioni, States of Mind (The Farewells); Futurism"
        questionArray.append(question1)

        let question3 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question3.questionText = ""
        question3.questionImage = UIImage.init(named: "street-light")
        question3.answerText = "Giacomo Balla, Street Light (Lampada -- Studio di luce); Futurism"
        questionArray.append(question3)

        let question4 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question4.questionText = ""
        question4.questionImage = UIImage.init(named: "dynamic-hieroglyphic")
        question4.answerText = "Gino Severini, Dynamic Hieroglyphic of the Bal Tabarin; Futurism"
        questionArray.append(question4)

        let question5 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question5.questionText = ""
        question5.questionImage = UIImage.init(named: "patriotic-celebration")
        question5.answerText = "Carlo Carra, Patriotic Celebration (Free-Word Painting); Futurism"
        questionArray.append(question5)
        
        // Russian Avant-Garde
        
        let question6 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question6.questionText = ""
        question6.questionImage = UIImage.init(named: "morning-in-the-village")
        question6.answerText = "Kazimir Malevich, Morning in the Village after a Snowstorm; Russian Avant-Garde"
        questionArray.append(question6)
        
        let question7 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question7.questionText = ""
        question7.questionImage = UIImage.init(named: "white-square-on-white")
        question7.answerText = "Kazimir Malevich, White Square on White; Russian Avant-Garde"
        questionArray.append(question7)
        
        let question8 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question8.questionText = ""
        question8.questionImage = UIImage.init(named: "proun-room")
        question8.answerText = "El Lissitzky, Proun Room; Russian Avant-Garde"
        questionArray.append(question8)
        
        let question9 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question9.questionText = ""
        question9.questionImage = UIImage.init(named: "monument-for-third-international")
        question9.answerText = "Vladimir Tatlin, Monument for the Third International; Russian Avant-Garde"
        questionArray.append(question9)
        
        let question10 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question10.questionText = ""
        question10.questionImage = UIImage.init(named: "books")
        question10.answerText = "Aleksandr Rodchenko, Books!; Russian Avant-Garde"
        questionArray.append(question10)
        
        // De Stijl
        
        let question11 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question11.questionText = ""
        question11.questionImage = UIImage.init(named: "composition-in-color-a")
        question11.answerText = "Piet Mondrian, Composition in Color A; De Stijl (Neo-Plasticism)"
        questionArray.append(question11)
        
        let question12 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question12.questionText = ""
        question12.questionImage = UIImage.init(named: "red-blue-black-etc")
        question12.answerText = "Piet Mondrian, Tableau No. II 1921-25, with Red, Blue, Black, Yellow, and Gray; De Stijl (Neo-Plasticism)"
        questionArray.append(question12)
        
        let question13 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question13.questionText = ""
        question13.questionImage = UIImage.init(named: "broadway-boogie-woogie")
        question13.answerText = "Piet Mondrian, Broadway Boogie-Woogie; De Stijl (Neo-Plasticism)"
        questionArray.append(question13)
        
        let question14 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question14.questionText = ""
        question14.questionImage = UIImage.init(named: "composition-ix")
        question14.answerText = "Theo Van Doesburg, Composition IX (Card Players); De Stijl (Neo-Plasticism)"
        questionArray.append(question14)
        
        let question15 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question15.questionText = ""
        question15.questionImage = UIImage.init(named: "red-and-blue-chair")
        question15.answerText = "Gerrit Rietveld, Red and Blue Chair; De Stijl (Neo-Plasticism)"
        questionArray.append(question15)

        let question16 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question16.questionText = ""
        question16.questionImage = UIImage.init(named: "schroeder-house")
        question16.answerText = "Gerrit Rietveld, Schroeder House, Utrecht; De Stijl (Neo-Plasticism)"
        questionArray.append(question16)
        
        // Dada
        
        let question17 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question17.questionText = ""
        question17.questionImage = UIImage.init(named: "collage-arranged-laws-of-chance")
        question17.answerText = "Jean Arp, Collage Arranged According to the Laws of Chance; Dada"
        questionArray.append(question17)
        
        let question18 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question18.questionText = ""
        question18.questionImage = UIImage.init(named: "bicycle-wheel")
        question18.answerText = "Marcel Duchamp, Bicycle Wheel; Dada"
        questionArray.append(question18)
        
        let question19 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question19.questionText = ""
        question19.questionImage = UIImage.init(named: "bride-stripped-bare")
        question19.answerText = "Marcel Duchamp, Bride Stripped Bare by Her Bachelors, Even; Dada"
        questionArray.append(question19)
        
        let question20 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question20.questionText = ""
        question20.questionImage = UIImage.init(named: "gift")
        question20.answerText = "Man Ray, Gift; Dada"
        questionArray.append(question20)
        
        let question21 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question21.questionText = ""
        question21.questionImage = UIImage.init(named: "spirit-of-our-time")
        question21.answerText = "Raoul Hausmann, The Spirit of Our Time (Mechanical Head); Dada"
        questionArray.append(question21)
        
        let question22 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question22.questionText = ""
        question22.questionImage = UIImage.init(named: "cut-with-kitchen-knife")
        question22.answerText = "Hannah Höch, Cut with the Kitchen Knife…; Dada"
        questionArray.append(question22)

        let question23 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question23.questionText = ""
        question23.questionImage = UIImage.init(named: "merzbild25A")
        question23.answerText = "Kurt Schwitters, Merzbild 25A; Dada"
        questionArray.append(question23)
        
        // Surrealism
        
        let question24 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question24.questionText = ""
        question24.questionImage = UIImage.init(named: "two-children-threatened-by-nightmare")
        question24.answerText = "Max Ernst, Two Children Are Threatened by a Nightingale; Surrealism"
        questionArray.append(question24)
        
        let question25 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question25.questionText = ""
        question25.questionImage = UIImage.init(named: "europe-after-rain")
        question25.answerText = "Max Ernst, Europe after the Rain; Surrealism"
        questionArray.append(question25)
        
        let question26 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question26.questionText = ""
        question26.questionImage = UIImage.init(named: "carnival-of-harlequin")
        question26.answerText = "Joan Miro, Carnival of Harlequin; Surrealism"
        questionArray.append(question26)
        
        let question27 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question27.questionText = ""
        question27.questionImage = UIImage.init(named: "battle-of-fishes")
        question27.answerText = "André Masson, Battle of Fishes; Surrealism"
        questionArray.append(question27)
        
        let question28 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question28.questionText = ""
        question28.questionImage = UIImage.init(named: "accommodations-of-desire")
        question28.answerText = "Salvador Dali, Accommodations of Desire; Surrealism"
        questionArray.append(question28)
        
        let question29 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question29.questionText = ""
        question29.questionImage = UIImage.init(named: "human-condition")
        question29.answerText = "René Magritte, The Human Condition; Surrealism"
        questionArray.append(question29)
        
        let question30 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question30.questionText = ""
        question30.questionImage = UIImage.init(named: "luncheon-in-fur")
        question30.answerText = "Meret Oppenheim, Luncheon in Fur; Surrealism"
        questionArray.append(question30)
        
        // Modernism in Architecture and Design
        
        let question31 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question31.questionText = ""
        question31.questionImage = UIImage.init(named: "guranty-trust-building")
        question31.answerText = "Louis Sullivan, Guaranty Trust Building; Modernism in Architecture & Design"
        questionArray.append(question31)
        
        let question32 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question32.questionText = ""
        question32.questionImage = UIImage.init(named: "robie-house")
        question32.answerText = "Frank Lloyd Wright, Robie House; Modernism in Architecture & Design"
        questionArray.append(question32)
        
        let question33 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question33.questionText = ""
        question33.questionImage = UIImage.init(named: "kaufmann-house")
        question33.answerText = "Frank Lloyd Wright, Kaufmann House; Modernism in Architecture & Design"
        questionArray.append(question33)
        
        let question34 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question34.questionText = ""
        question34.questionImage = UIImage.init(named: "armchair-b3")
        question34.answerText = "Marcel Breuer, Armchair, Model B3; Modernism in Architecture & Design"
        questionArray.append(question34)
        
        let question35 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question35.questionText = ""
        question35.questionImage = UIImage.init(named: "fagus-shoe-factory")
        question35.answerText = "Walter Gropius & Adolph Meyer, Fagus Shoe Factory; Modernism in Architecture & Design"
        questionArray.append(question35)
        
        let question36 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question36.questionText = ""
        question36.questionImage = UIImage.init(named: "bauhaus-building")
        question36.answerText = "Walter Gropius, Bauhaus Building; Modernism in Architecture & Design"
        questionArray.append(question36)
        
        let question37 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question37.questionText = ""
        question37.questionImage = UIImage.init(named: "villa-savoye")
        question37.answerText = "Le Corbusier (Charles Eduard Jeanneret), Villa Savoye; Modernism in Architecture & Design"
        questionArray.append(question37)

        let question38 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question38.questionText = ""
        question38.questionImage = UIImage.init(named: "seagram")
        question38.answerText = "Mies Van der Rohe, Seagram Building; Modernism in Architecture & Design"
        questionArray.append(question38)


        //initialize the survey three deck
        /*self.testDeckSurveyThree = GLNCardDeck.init(ownerId: 1, name: "Survey 3 Exam 1", deckClass: "Survey of Art III", instructor: "Instructor Name!", createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")

        var questionArray = Array<GLNQuestionInstance>()
        
        // question 1
        let question1 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question1.questionText = ""
        question1.questionImage = UIImage.init(named: "view-of-the-boulevard"
        question1.answerText = "Louis-Jacques-Mandé Daguerre,View of the Boulevard du Temple, Paris, Impressionism"
        questionArray.append(question1)

        // question 2
        let question2 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question2.questionText = ""
        question2.questionImage = UIImage.init(named: "burial-at-ornans"
        question2.answerText = "Gustave Courbet, Burial at Ornans, Impressionism"
        questionArray.append(question2)

        // question 3
        let question3 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question3.questionText = ""
        question3.questionImage = UIImage.init(named: "luncheon-on-the-grass"
        question3.answerText = "Edouard Manet, Luncheon on the Grass (Dejeuner sur l'herbe), Impressionism"
        questionArray.append(question3)

        // question 4
        let question4 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question4.questionText = ""
        question4.questionImage = UIImage.init(named: "olympia"
        question4.answerText = "Edouard Manet, Olympia, Impressionism"
        questionArray.append(question4)

        // question 4
        let question5 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question5.questionText = ""
        question5.questionImage = UIImage.init(named: "the-tub"
        question5.answerText = "Edgar Degas, The Tub, Impressionism"
        questionArray.append(question5)

        // question 4
        let question6 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question6.questionText = ""
        question6.questionImage = UIImage.init(named: "sunrise"
        question6.answerText = "Claude Monet, Sunrise, Impressionism"
        questionArray.append(question6)

        // question 4
        let question7 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question7.questionText = ""
        question7.questionImage = UIImage.init(named: "capucines"
        question7.answerText = "Claude Monet Boulevard des Capucines, Impressionism"
        questionArray.append(question7)

        // question 4
        let question8 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question8.questionText = ""
        question8.questionImage = UIImage.init(named: "moulin-de-la-gelette"
        question8.answerText = "Pierre-Auguste Renoir, Moulin de la Galette, Impressionism"
        questionArray.append(question8)
        
        /// POST IMPRESSIONISM VVVV
        
        // question 1
        let question9 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question9.questionText = ""
        question9.questionImage = UIImage.init(named: "sunday-afternoon-island-grand-jatte"
        question9.answerText = "Georges Seurat, A Sunday Afternoon on the Island of Grande Jatte, Post-Impressionism"
        questionArray.append(question9)
        
        // question 2
        let question10 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question10.questionText = ""
        question10.questionImage = UIImage.init(named: "chahut"
        question10.answerText = "Georges Seurat, Chahut, Post-Impressionism"
        questionArray.append(question10)
        
        // question 3
        let question11 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question11.questionText = ""
        question11.questionImage = UIImage.init(named: "night-cafe"
        question11.answerText = "Vincent Van Gogh, Night Café, Post-Impressionism"
        questionArray.append(question11)
        
        // question 4
        let question12 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question12.questionText = ""
        question12.questionImage = UIImage.init(named: "starry-night"
        question12.answerText = "Vincent Van Gogh, The Starry Night, Post-Impressionism"
        questionArray.append(question12)
        
        // question 4
        let question13 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question13.questionText = ""
        question13.questionImage = UIImage.init(named: "vision-after-the-sermon"
        question13.answerText = "Paul Gauguin, Vision after the Sermon, Post-Impressionism"
        questionArray.append(question13)
        
        // question 4
        let question14 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question14.questionText = ""
        question14.questionImage = UIImage.init(named: "where-do-we-come-from"
        question14.answerText = "Paul Gauguin, Where Do We Come from? What Are We? Where Are We Going?, Post-Impressionism"
        questionArray.append(question14)
        
        // question 4
        let question15 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question15.questionText = ""
        question15.questionImage = UIImage.init(named: "bay-of-marseilles"
        question15.answerText = "Paul Cézanne, The Bay of Marseilles, Seen from L'Estaque, Post-Impressionism"
        questionArray.append(question15)
        
        // question 4
        let question16 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question16.questionText = ""
        question16.questionImage = UIImage.init(named: "still-life-basket-of-apples"
        question16.answerText = "Paul Cézanne, Still Life with Basket of Apples, Post-Impressionism"
        questionArray.append(question16)
        
        // ART NOUVEAU VVV
        
        // question 4
        let question17 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question17.questionText = ""
        question17.questionImage = UIImage.init(named: "tropon"
        question17.answerText = "Henry van de Velde, Tropon, Art Nouveau"
        questionArray.append(question17)
        
        // question 4
        let question18 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question18.questionText = ""
        question18.questionImage = UIImage.init(named: "porte-dauphine"
        question18.answerText = "Hector Guimard, Paris Metro: Porte Dauphine station, Paris, Art Nouveau"
        questionArray.append(question18)
        
        // question 4
        let question19 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question19.questionText = ""
        question19.questionImage = UIImage.init(named: "tassel-house"
        question19.answerText = "Victor Horta, Tassel House, Brussels, Art Nouveau"
        questionArray.append(question19)
        
        // question 4
        let question20 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question20.questionText = ""
        question20.questionImage = UIImage.init(named: "casa-mila"
        question20.answerText = "Antoni Gaudi Casa Mila, Barcelona, Art Nouveau"
        questionArray.append(question20)
        
        // question 4
        let question21 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question21.questionText = ""
        question21.questionImage = UIImage.init(named: "palais-stoclet"
        question21.answerText = "Josef Hoffman, Palais Stoclet, Brussels, Art Nouveau"
        questionArray.append(question21)
        
        // FAUVISM VVV
        
        // question 4
        let question22 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question22.questionText = ""
        question22.questionImage = UIImage.init(named: "luxe-calme-volupte"
        question22.answerText = "Henri Matisse, Luxe, calme et volupté (Luxury, Calm and Delight), Fauvism"
        questionArray.append(question22)
        
        // question 4
        let question23 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question23.questionText = ""
        question23.questionImage = UIImage.init(named: "joy-of-life"
        question23.answerText = "Henri Matisse, The Joy of Life, Fauvism"
        questionArray.append(question23)
        
        // question 4
        let question24 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question24.questionText = ""
        question24.questionImage = UIImage.init(named: "harmony-in-red"
        question24.answerText = "Henri Matisse, Harmony in Red, Fauvism"
        questionArray.append(question24)
        
        // question 4
        let question25 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question25.questionText = ""
        question25.questionImage = UIImage.init(named: "london-bridge"
        question25.answerText = "André Derain, London Bridge, Fauvism"
        questionArray.append(question25)
        
        // question 4
        let question26 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question26.questionText = ""
        question26.questionImage = UIImage.init(named: "portrait-of-derain"
        question26.answerText = "Maurice Vlaminck, Portrait of Derain, Fauvism"
        questionArray.append(question26)


        // Expressionism VVV
        
        // question 1
        let question27 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question27.questionText = ""
        question27.questionImage = UIImage.init(named: "street-scene-dresden"
        question27.answerText = "Ernst Ludwig Kirchner, Street, Dresden, Expressionism"
        questionArray.append(question27)
        
        // question 2
        let question28 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question28.questionText = ""
        question28.questionImage = UIImage.init(named: "last-supper"
        question28.answerText = "Emil Nolde, The Last Supper, Expressionism"
        questionArray.append(question28)
        
        // question 3
        let question29 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question29.questionText = ""
        question29.questionImage = UIImage.init(named: "standing-child"
        question29.answerText = "Eric Heckel, Standing Child, Expressionism"
        questionArray.append(question29)
        
        // question 4
        let question30 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question30.questionText = ""
        question30.questionImage = UIImage.init(named: "composition-vii"
        question30.answerText = "Vasily Kandinsky Composition VII, Expressionism"
        questionArray.append(question30)
        
        // question 4
        let question31 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question31.questionText = ""
        question31.questionImage = UIImage.init(named: "large-blue-horses"
        question31.answerText = "Franz Marc, The Large Blue Horses, Expressionism"
        questionArray.append(question31)
        
        // question 4
        let question32 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question32.questionText = ""
        question32.questionImage = UIImage.init(named: "stables"
        question32.answerText = "Franz Marc, Stables, 1913-14, Expressionism"
        questionArray.append(question32)
        
        // Cubism VVV
        
        // question 1
        let question33 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question33.questionText = ""
        question33.questionImage = UIImage.init(named: "les-demoiselles-davignon"
        question33.answerText = "Pablo Picasso, Les Demoiselles d'Avignon, Cubism"
        questionArray.append(question33)
        
        // question 2
        let question34 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question34.questionText = ""
        question34.questionImage = UIImage.init(named: "houses-at-lestaque"
        question34.answerText = "Georges Braque, Houses at L'Estaque, Cubism"
        questionArray.append(question34)
        
        // question 3
        let question35 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question35.questionText = ""
        question35.questionImage = UIImage.init(named: "the-portuguese"
        question35.answerText = "Georges Braque, The Portuguese (The Emigrant), Cubism"
        questionArray.append(question35)
        
        // question 4
        let question36 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question36.questionText = ""
        question36.questionImage = UIImage.init(named: "still-life-chair-caning"
        question36.answerText = "Pablo Picasso, Still Life with Chair Caning, Cubism"
        questionArray.append(question36)
        
        // question 4
        let question37 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question37.questionText = ""
        question37.questionImage = UIImage.init(named: "guitar-music-wine-glass"
        question37.answerText = "Pablo Picasso, Guitar, Sheet of Music, and Wine Glass, Cubism"
        questionArray.append(question37)

        // question 4
        let question38 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question38.questionText = ""
        question38.questionImage = UIImage.init(named: "nude-descending-staircase"
        question38.answerText = "Marcel Duchamp, Nude Descending Staircase No.2, Cubism"
        questionArray.append(question38)

        */
        testDeckSurveyThreeExam2.questionInstances = questionArray
        
        self.testDeckGeo101 = GLNCardDeck.init(ownerId: 1, name: "Geography 101 Quiz", deckClass: "Geography 101", instructor: "Instructor Name", createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")
        
        testDeckGeo101.questionInstances = questionArray
    }
}
