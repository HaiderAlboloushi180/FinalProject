//
//  Topics.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/15/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import Foundation

struct TopicModel {
    var topicName: String
    var subjectOfTopic: String
    var gradeLevel: String
    var questions: [String]
    var answers1: [String]
    var answers2: [String]
}

let topics: [TopicModel] = [
    TopicModel(topicName: "صلاة الجمعة", subjectOfTopic: "Islam", gradeLevel: "8th Grade", questions: ["متى وقت صلاة الجمعة؟", "اي من هذه السنن وآداب صلاة الجمعة خاطئة؟"], answers1: ["الضهر", "الفجر", "العصر"], answers2: ["قراءة سورة الفاتحة", "الغسل", "السواك"]),
    TopicModel(topicName: "صلاة الكسوف", subjectOfTopic: "Islam", gradeLevel: "8th Grade", questions: ["كم عدد الخطوات صلاة الكسوف؟", "اين ولد عبدالله بن مسعود -رضي الله عنه-؟"], answers1: ["8", "9", "6"], answers2: ["مكة", "مدينة المنورة", "العراق"]),
    TopicModel(topicName: "الإسراء والمعراج", subjectOfTopic: "Islam", gradeLevel: "8th Grade", questions: ["تاريخ الاسراء والمعراج هو سنة ـــ من البعثة", "اي من هذه الدروس خاطئة؟"], answers1: ["10", "11", "9"], answers2: ["كل الاجابات صحيحة", "الاسلام دين الهداية والفطرة", "اهمية الصلاة فهي عماد الدين"]),
    TopicModel(topicName: "قراءة جزء ١", subjectOfTopic: "Arabic", gradeLevel: "8th Grade", questions: ["اين حدثت هذه القصة؟", "كم شهر ضاف الرجل الى الزاتب؟"], answers1: ["السعودية", "الكويت", "قطر"], answers2: ["6", "5", "4"]),
    TopicModel(topicName: "قراءة جزء ٢", subjectOfTopic: "Arabic", gradeLevel: "8th Grade", questions: ["اين ذهب الطفل في بداية القصة؟", "معنى كلمة رفضت"], answers1: ["متجر به هاتفاً ارضياً", "منزله", "مدرسة"], answers2: ["كثر ماؤه", "ساعدت", "اخذت"]),
    TopicModel(topicName: "قراءة جزء ٣", subjectOfTopic: "Arabic", gradeLevel: "8th Grade", questions: ["ماذا فعل الرجل الى الفراشة؟", "مفرد ساعات"], answers1: ["قص الشرنقة", "لم يفعل شيء", "اكله"], answers2: ["ساعة", "سعة", "ساع"]),
    TopicModel(topicName: "Points, Lines, and Planes", subjectOfTopic: "Geometry", gradeLevel: "9th Grade", questions: ["How many dimensions does a plane have?", "What's the difference between a line and a line segment?"], answers1: ["2", "3", "1"], answers2: ["Line is infinite while segment isn't", "They're the same", "None are correct"]),
    TopicModel(topicName: "Trigonometry", subjectOfTopic: "Geometry", gradeLevel: "9th Grade", questions: ["How many trigonometric functions are there?", "sin x = ___"], answers1: ["6", "3", "5"], answers2: ["o/h", "h/o", "o/a"]),
    TopicModel(topicName: "Right Triangles", subjectOfTopic: "Geometry", gradeLevel: "9th Grade", questions: ["A right triangle has a(n) ___", "Which one isn't a special triangle?"], answers1: ["90° angle", "Extra side", "Special angle"], answers2: ["20° 70° 90°", "30° 60° 90°", "45° 45° 90°"]),
    TopicModel(topicName: "Main Idea", subjectOfTopic: "English", gradeLevel: "9th Grade", questions: ["What is a main idea?", "The main idea is usually the ___ sentence"], answers1: ["Most important part of text", "Middle part of text", "Title"], answers2: ["1st", "2nd", "Last"]),
    TopicModel(topicName: "Prefixes and Suffixes", subjectOfTopic: "English", gradeLevel: "9th Grade", questions: ["Where is a suffix placed?", "When do we use 're-'"], answers1: ["After a word", "Anywhere", "Before a word"], answers2: ["To indicate repetition", "When it's useless", "When it's past tense"]),
    TopicModel(topicName: "Capitalization", subjectOfTopic: "English", gradeLevel: "9th Grade", questions: ["Fix this: Do i know You", "What do we not capitalize?"], answers1: ["Do I know you", "Do I Know You", "do i Know you"], answers2: ["Words in the middle of a sentence", "Names", "Proper nouns"]),
    TopicModel(topicName: "WW1", subjectOfTopic: "History", gradeLevel: "10th Grade", questions: ["Who was assassinated in the beginning of WW1?", "Why did America join the war?"], answers1: ["Franz Ferdinand", "Adolf Hitler", "Czar Nicholas II"], answers2: ["The Germans attacked their ships", "They felt like it", "They were forced"]),
    TopicModel(topicName: "WW2", subjectOfTopic: "History", gradeLevel: "10th Grade", questions: ["When was WW2?", "Who was the leader of Nazi Germany?"], answers1: ["1939-1945", "1899-1905", "1914-1918"], answers2: ["Adolf Hitler", "Joseph Stalin", "Benito Mussolini"]),
    TopicModel(topicName: "American History", subjectOfTopic: "History", gradeLevel: "10th Grade", questions: ["When did America declare independence?", "When did the American Civil War start?"], answers1: ["4/7/1776", "4/6/1774", "4/7/1774"], answers2: ["1861", "1776", "1783"]),
    TopicModel(topicName: "Biology", subjectOfTopic: "Science", gradeLevel: "10th Grade", questions: ["What is Biology?", "What is reproduction?"], answers1: ["Study of living organisms", "Study of physical nature", "Study of rocks"], answers2: ["The process of producing new individuals of the same kind", "Sharing", "To adopt"]),
    TopicModel(topicName: "Chemistry", subjectOfTopic: "Science", gradeLevel: "10th Grade", questions: ["What is the Periodic Table?", "What is the positively charged particle?"], answers1: ["Table of elements", "Table of periods", "Scientific Method"], answers2: ["Proton", "Neutron", "Electron"]),
    TopicModel(topicName: "Physical Science", subjectOfTopic: "Science", gradeLevel: "10th Grade", questions: ["Who discovered gravity?", "What does Newton's 3rd Law state?"], answers1: ["Isaac Newton", "Thomas Edison", "Albert Einstein"], answers2: ["Every action has an equal opposite reaction", "F=ma", "None are correct"])
]
