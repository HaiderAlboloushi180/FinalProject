//
//  TutorVC.swift
//  FirebaseTemplate
//
//  Created by Haider Alboloushi on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class TutorVC: UIViewController {

    @IBOutlet var firstNameField: UITextField!
    @IBOutlet var lastNameField: UITextField!
    @IBOutlet var ageField: UITextField!
    @IBOutlet var communticatField: UITextField!
    @IBOutlet var teachField: UITextField!
    @IBOutlet var earnField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTutor() {
        
        let firstName = firstNameField.text!
        let lastName = lastNameField.text!
        let age = ageField.text!
        let communicate = communticatField.text!
        let teach = teachField.text!
        let earn = earnField.text!
        let tutor = Tutor(firstName: firstName, lastName: lastName, age: age, communicate: communicate, teach: teach, earn: earn)
        
        Networking.createItem(tutor, inCollection: "tutors", success: {
            self.alert(title: "Succesful✅", message: "You succesfully added yourself as a tutor!")
        })
        
    }
    
    func alert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message , preferredStyle: .alert)
               let okAction = UIAlertAction(title: "Ok", style: .cancel)
               alertController.addAction(okAction)
               present(alertController, animated: true)
    }
    
}
