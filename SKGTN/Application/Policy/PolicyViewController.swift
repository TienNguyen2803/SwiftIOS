//
//  PolicyViewController.swift
//  SKGTN
//
//  Created by Minh Tien on 6/8/21.
//

import UIKit
import PDFKit
class PolicyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
           
        self.tabBarController?.tabBar.isHidden = true
         
        navigationItem.title = "Chính sách"
      
           // Add PDFView to view controller.
           let pdfView = PDFView(frame: self.view.bounds)
           pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
           self.view.addSubview(pdfView)
           
           // Fit content in PDFView.
           pdfView.autoScales = true
           
           // Load Sample.pdf file from app bundle.
           let fileURL = Bundle.main.url(forResource: "policy", withExtension: "pdf")
           pdfView.document = PDFDocument(url: fileURL!)
    }
    

    

}
