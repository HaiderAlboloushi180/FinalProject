//
//  QuizTableVC.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/15/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import UIKit

class QuizTableVC: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quizCell", for: indexPath)

        cell.textLabel?.text = topics[indexPath.row].topicName
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let topic = topics[indexPath.row]
        performSegue(withIdentifier: "quizSegue", sender: topic)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! QuizVC
        vc.quizQuestions = sender as! TopicModel
    }

}
