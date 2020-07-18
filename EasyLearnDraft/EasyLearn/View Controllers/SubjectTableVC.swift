//
//  SubjectTableVC.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/13/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import UIKit

class SubjectTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SubjectCell

        cell.textLabel?.text = topics[indexPath.row].topicName
        
        let topic = topics[indexPath.row]
        
        cell.gradeLevel.text = topic.gradeLevel
        cell.subjectLabel.text = topic.subjectOfTopic
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 100
      }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let topic = topics[indexPath.row]
        performSegue(withIdentifier: "topicSegue", sender: topic)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! LessonVC
        vc.topic = sender as! TopicModel?
    }
    
}
