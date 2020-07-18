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
        cell.textLabel?.text = "\(tutor.firstName) \(tutor.lastName), Age: \(tutor.age), Teach \(tutor.teach), Talk on \(tutor.communicate), \(tutor.earn)"
        cell.textLabel?.font = UIFont.systemFont(ofSize: 11.0)

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
