//
//  QuizVC.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/15/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import UIKit


class QuizVC: UIViewController {
    
    var quizQuestions: TopicModel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerBtnView1: UIView!
    @IBOutlet weak var answerBtnView2: UIView!
    @IBOutlet weak var answerBtnView3: UIView!
    
    @IBOutlet weak var answerBtn1: UIButton!
    @IBOutlet weak var answerBtn2: UIButton!
    @IBOutlet weak var answerBtn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnsShape()
        setUpQuiz()
    }
    
    @IBAction func answerBtn1Tapped(_ sender: UIButton) {
        correctAlert(title: "Correct! 👏", message: "You picked the right answer!")
        
        questionLabel.text = quizQuestions.questions[1]
        
        answerBtn1.setTitle(quizQuestions.answers2[0], for: .normal)
        answerBtn2.setTitle(quizQuestions.answers2[1], for: .normal)
        answerBtn3.setTitle(quizQuestions.answers2[2], for: .normal)
    }
    
    @IBAction func answerBtn2Tapped(_ sender: UIButton) {
        incorrectAlert(title: "Incorrect ☹️", message: "You can always try again!")
    }
    
    @IBAction func answerBtn3Tapped(_ sender: UIButton) {
        incorrectAlert(title: "Incorrect ☹️", message: "You can always try again!")
    }
    
    func btnsShape() {
        answerBtnView1.layer.cornerRadius = 20
        answerBtnView2.layer.cornerRadius = 20
        answerBtnView3.layer.cornerRadius = 20
    }
    
    func setUpQuiz() {
        questionLabel.text = quizQuestions.questions[0]
        
        answerBtn1.setTitle(quizQuestions.answers1[0], for: .normal)
        answerBtn2.setTitle(quizQuestions.answers1[1], for: .normal)
        answerBtn3.setTitle(quizQuestions.answers1[2], for: .normal)
    }
    
    func correctAlert(title: String, message: String) {
         let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
         let okAction = UIAlertAction(title: "Ok", style: .cancel)
         alertController.addAction(okAction)
         present(alertController, animated: true)
     }
    
    func incorrectAlert(title: String, message: String) {
         let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
         let okAction = UIAlertAction(title: "Ok", style: .cancel)
         alertController.addAction(okAction)
         present(alertController, animated: true)
     }
    
}


