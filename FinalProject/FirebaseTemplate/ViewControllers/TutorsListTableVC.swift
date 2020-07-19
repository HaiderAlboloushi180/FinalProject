//
//  TutorsListTableVC.swift
//  FirebaseTemplate
//
//  Created by Haider Alboloushi on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class TutorsListTableVC: UITableViewController {
    
    var tutors: [Tutor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        Networking.getListOf(COLLECTION_NAME: "tutors") { (tutors: [Tutor]) in
            self.tutors = tutors
            self.tableView.reloadData()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tutors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let tutor = tutors[indexPath.row]
        cell.textLabel?.text = " \(tutor.teach) teacher, \(tutor.firstName) \(tutor.lastName)"
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tutor = tutors[indexPath.row]
        performSegue(withIdentifier: "tutorDetails", sender: tutor)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! TutorDetailsVC
        vc.tutorDetails = sender as! Tutor
    }
    

}
