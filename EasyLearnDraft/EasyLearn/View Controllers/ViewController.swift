//
//  ViewController.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/13/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lessonBtnView: UIView!
    @IBOutlet weak var quizView: UIView!
    @IBOutlet weak var randomFactView: UIView!
    @IBOutlet weak var factLabel: UILabel!
    
    let fact = Fact()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        viewShape()
        factLabel.text = fact.randomFact()
    }
    
    func viewShape() {
        lessonBtnView.layer.cornerRadius = 20
        quizView.layer.cornerRadius = 20
        randomFactView.layer.cornerRadius = 20
    }
    
    @IBAction func factBtnTapped(_ sender: UIButton) {
        factLabel.text = fact.randomFact()
    }
    
}

