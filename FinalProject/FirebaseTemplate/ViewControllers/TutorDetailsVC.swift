//
//  TutorDetailsVC.swift
//  FirebaseTemplate
//
//  Created by Fatimah Alhashem on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class TutorDetailsVC: UIViewController {
    
    var tutorDetails = Tutor(firstName: "", lastName: "", age: "", communicate: "", teach: "")

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var tutorName: UILabel!
    @IBOutlet weak var tutorAge: UILabel!
    @IBOutlet weak var tutorSubjects: UILabel!
    @IBOutlet weak var tutorEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTutor()
    }
    
    func setUpTutor() {
        tutorName.text = "\(tutorDetails.firstName) \(tutorDetails.lastName)"
        tutorAge.text = tutorDetails.age
        tutorSubjects.text = "\(tutorDetails.teach) Teacher"
        tutorEmail.text = "Email me: \(tutorDetails.communicate)"
        profileImg.image = UIImage(named: "\(tutorDetails.firstName) \(tutorDetails.lastName)")
        profileImg.layer.cornerRadius = 20
    }

}
