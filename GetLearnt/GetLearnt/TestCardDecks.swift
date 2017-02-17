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
    var testDeckSurveyThree: GLNCardDeck
    var testDeckGeo101: GLNCardDeck
    
    init() {
        
        //initialize the survey three deck
        self.testDeckSurveyThree = GLNCardDeck.init(ownerId: 1, name: "Survey 3 Exam 1", deckClass: "Survey of Art III", instructor: "Instructor Name!", createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")

        var questionArray = Array<GLNQuestionInstance>()
        
        // question 1
        let question1 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question1.questionText = ""
        question1.questionImage = UIImage.init(named: "view-of-the-boulevard")
        question1.answerText = "Louis-Jacques-Mandé Daguerre,View of the Boulevard du Temple, Paris, c1838, daguerreotype"
        questionArray.append(question1)

        // question 2
        let question2 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question2.questionText = ""
        question2.questionImage = UIImage.init(named: "burial-at-ornans")
        question2.answerText = "Gustave Courbet, Burial at Ornans, 1849-50, Oil on canvas, 315 x 668 cm"
        questionArray.append(question2)

        // question 3
        let question3 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question3.questionText = ""
        question3.questionImage = UIImage.init(named: "luncheon-on-the-grass")
        question3.answerText = "Edouard Manet, Luncheon on the Grass (Dejeuner sur l'herbe), 1863; oil on canvas"
        questionArray.append(question3)

        // question 4
        let question4 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question4.questionText = ""
        question4.questionImage = UIImage.init(named: "olympia")
        question4.answerText = "Edouard Manet, Olympia, 1863, oil on canvas"
        questionArray.append(question4)

        // question 4
        let question5 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question5.questionText = ""
        question5.questionImage = UIImage.init(named: "the-tub")
        question5.answerText = "Edgar Degas, The Tub, 1886, pastel on card"
        questionArray.append(question5)

        // question 4
        let question6 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question6.questionText = ""
        question6.questionImage = UIImage.init(named: "sunrise")
        question6.answerText = "Claude Monet, Impression, Sunrise, 1872, oil on canvas"
        questionArray.append(question6)

        // question 4
        let question7 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question7.questionText = ""
        question7.questionImage = UIImage.init(named: "capucines")
        question7.answerText = "Claude Monet Boulevard des Capucines, 1873, oil on canvas"
        questionArray.append(question7)

        // question 4
        let question8 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question8.questionText = ""
        question8.questionImage = UIImage.init(named: "moulin-de-la-gelette")
        question8.answerText = "Pierre-Auguste Renoir, Moulin de la Galette, 1876, oil on canvas"
        questionArray.append(question8)
        
        /// POST IMPRESSIONISM VVVV
        
        // question 1
        let question9 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question9.questionText = ""
        question9.questionImage = UIImage.init(named: "sunday-afternoon-island-grand-jatte")
        question9.answerText = "Georges Seurat, A Sunday Afternoon on the Island of Grande Jatte, 1884-86, oil on canvas"
        questionArray.append(question9)
        
        // question 2
        let question10 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question10.questionText = ""
        question10.questionImage = UIImage.init(named: "chahut")
        question10.answerText = "Georges Seurat, Chahut, 1889, oil on canvas"
        questionArray.append(question10)
        
        // question 3
        let question11 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question11.questionText = ""
        question11.questionImage = UIImage.init(named: "night-cafe")
        question11.answerText = "Vincent Van Gogh, Night Café, 1888, oil on canvas"
        questionArray.append(question11)
        
        // question 4
        let question12 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question12.questionText = ""
        question12.questionImage = UIImage.init(named: "starry-night")
        question12.answerText = "Vincent Van Gogh, The Starry Night, 1889, oil on canvas"
        questionArray.append(question12)
        
        // question 4
        let question13 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question13.questionText = ""
        question13.questionImage = UIImage.init(named: "vision-after-the-sermon")
        question13.answerText = "Paul Gauguin, Vision after the Sermon, 1888, oil on canvas"
        questionArray.append(question13)
        
        // question 4
        let question14 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question14.questionText = ""
        question14.questionImage = UIImage.init(named: "where-do-we-come-from")
        question14.answerText = "Paul Gauguin, Where Do We Come from? What Are We? Where Are We Going?, 1897-98, oil on canvas"
        questionArray.append(question14)
        
        // question 4
        let question15 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question15.questionText = ""
        question15.questionImage = UIImage.init(named: "bay-of-marseilles")
        question15.answerText = "Paul Cézanne, The Bay of Marseilles, Seen from L'Estaque, 1885, oil on canvas"
        questionArray.append(question15)
        
        // question 4
        let question16 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question16.questionText = ""
        question16.questionImage = UIImage.init(named: "still-life-basket-of-apples")
        question16.answerText = "Paul Cézanne, Still Life with Basket of Apples, 1893, oil on canvas"
        questionArray.append(question16)
        
        // ART NOUVEAU VVV
        
        // question 4
        let question17 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question17.questionText = ""
        question17.questionImage = UIImage.init(named: "tropon")
        question17.answerText = "Henry van de Velde, Tropon, 1899, lithographic poster"
        questionArray.append(question17)
        
        // question 4
        let question18 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question18.questionText = ""
        question18.questionImage = UIImage.init(named: "porte-dauphine")
        question18.answerText = "Hector Guimard, Paris Metro: Porte Dauphine station, Paris, 1901"
        questionArray.append(question18)
        
        // question 4
        let question19 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question19.questionText = ""
        question19.questionImage = UIImage.init(named: "tassel-house")
        question19.answerText = "Victor Horta, Tassel House, Brussels, 1893"
        questionArray.append(question19)
        
        // question 4
        let question20 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question20.questionText = ""
        question20.questionImage = UIImage.init(named: "casa-mila")
        question20.answerText = "Antoni Gaudi Casa Mila, Barcelona, 1905-07"
        questionArray.append(question20)
        
        // question 4
        let question21 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question21.questionText = ""
        question21.questionImage = UIImage.init(named: "palais-stoclet")
        question21.answerText = "Josef Hoffman, Palais Stoclet, Brussels, 1905-1911"
        questionArray.append(question21)
        
        // EXPRESSIONISM VVV
        
        // question 4
        let question22 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question22.questionText = ""
        question22.questionImage = UIImage.init(named: "luxe-calme-volupte")
        question22.answerText = "Henri Matisse, Luxe, calme et volupté (Luxury, Calm and Delight), 1904-05, oil on canvas"
        questionArray.append(question22)
        
        // question 4
        let question23 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question23.questionText = ""
        question23.questionImage = UIImage.init(named: "joy-of-life")
        question23.answerText = "Henri Matisse, The Joy of Life, 1905-06, oil on canvas"
        questionArray.append(question23)
        
        // question 4
        let question24 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question24.questionText = ""
        question24.questionImage = UIImage.init(named: "harmony-in-red")
        question24.answerText = "Henri Matisse, Harmony in Red,1908, oil on canvas"
        questionArray.append(question24)
        
        // question 4
        let question25 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question25.questionText = ""
        question25.questionImage = UIImage.init(named: "london-bridge")
        question25.answerText = "André Derain, London Bridge, 1906, oil on canvas"
        questionArray.append(question25)
        
        // question 4
        let question26 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question26.questionText = ""
        question26.questionImage = UIImage.init(named: "portrait-of-derain")
        question26.answerText = "Maurice Vlaminck, Portrait of Derain, 1906, oil on canvas"
        questionArray.append(question26)


        // Expressionism VVV
        
        // question 1
        let question27 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question27.questionText = ""
        question27.questionImage = UIImage.init(named: "street-scene-dresden")
        question27.answerText = "Ernst Ludwig Kirchner, Street, Dresden, 1908, oil on canvas"
        questionArray.append(question27)
        
        // question 2
        let question28 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question28.questionText = ""
        question28.questionImage = UIImage.init(named: "last-supper")
        question28.answerText = "Emil Nolde, The Last Supper, 1909, oil on canvas"
        questionArray.append(question28)
        
        // question 3
        let question29 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question29.questionText = ""
        question29.questionImage = UIImage.init(named: "standing-child")
        question29.answerText = "Eric Heckel, Standing Child, 1910, color woodcut"
        questionArray.append(question29)
        
        // question 4
        let question30 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question30.questionText = ""
        question30.questionImage = UIImage.init(named: "composition-vii")
        question30.answerText = "Vasily Kandinsky Composition VII, 1913, oil on canvas"
        questionArray.append(question30)
        
        // question 4
        let question31 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question31.questionText = ""
        question31.questionImage = UIImage.init(named: "large-blue-horses")
        question31.answerText = "Franz Marc, The Large Blue Horses, 1911, oil on canvas"
        questionArray.append(question31)
        
        // question 4
        let question32 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question32.questionText = ""
        question32.questionImage = UIImage.init(named: "stables")
        question32.answerText = "Franz Marc, Stables, 1913-14, oil on canvas"
        questionArray.append(question32)
        
        // Cubism VVV
        
        // question 1
        let question33 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question33.questionText = ""
        question33.questionImage = UIImage.init(named: "les-demoiselles-davignon")
        question33.answerText = "Pablo Picasso, Les Demoiselles d'Avignon, 1907, oil on canvas"
        questionArray.append(question33)
        
        // question 2
        let question34 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question34.questionText = ""
        question34.questionImage = UIImage.init(named: "houses-at-lestaque")
        question34.answerText = "Georges Braque, Houses at L'Estaque, 1908, oil on canvas"
        questionArray.append(question34)
        
        // question 3
        let question35 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question35.questionText = ""
        question35.questionImage = UIImage.init(named: "the-portuguese")
        question35.answerText = "Georges Braque, The Portuguese (The Emigrant), 1911, oil on canvas"
        questionArray.append(question35)
        
        // question 4
        let question36 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question36.questionText = ""
        question36.questionImage = UIImage.init(named: "still-life-chair-caning")
        question36.answerText = "Pablo Picasso, Still Life with Chair Caning, 1912, oil and oilcloth on canvas"
        questionArray.append(question36)
        
        // question 4
        let question37 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question37.questionText = ""
        question37.questionImage = UIImage.init(named: "guitar-music-wine-glass")
        question37.answerText = "Pablo Picasso, Guitar, Sheet of Music, and Wine Glass, 1912, pasted papers, gouache, and charcoal on paper"
        questionArray.append(question37)

        // question 4
        let question38 = GLNQuestionInstance.init(id: 1, deckId: 1, createdAt: "2016-08-20 18:22:25.720966", updatedAt: "2016-08-20 18:22:25.720966")
        question38.questionText = ""
        question38.questionImage = UIImage.init(named: "nude-descending-staircase")
        question38.answerText = "Marcel Duchamp, Nude Descending Staircase No.2, 1912, oil on canvas"
        questionArray.append(question38)

        
        testDeckSurveyThree.questionInstances = questionArray
        
        self.testDeckGeo101 = GLNCardDeck.init(ownerId: 1, name: "Geography 101 Quiz", deckClass: "Geography 101", instructor: "Instructor Name", createdAt: "2016-08-17 04:08:36.556415", updatedAt: "2016-08-17 04:08:36.556415", quizCode: "3TFSAJ")
        
        testDeckGeo101.questionInstances = questionArray
    }
}
