//
//  LessonVC.swift
//  EasyLearn
//
//  Created by Haider Alboloushi on 7/15/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import UIKit
import PDFKit

class LessonVC: UIViewController {
    
    var topic: TopicModel!
    
    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "\(topic.topicName)", ofType: "pdf") {
            
            let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url){
                pdfView.autoScales = true
                pdfView.displayMode = .singlePageContinuous
                pdfView.displayDirection = .vertical
                pdfView.document = pdfDocument
            }
        }
    }
    


}
