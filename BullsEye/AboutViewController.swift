//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Aditya Shinde on 3/2/20.
//  Copyright © 2020 Aditya Shinde. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPage = Bundle.main.path(forResource: "BullsEye", ofType: "html"){
            let url = URL(fileURLWithPath: htmlPage)
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBAction func close(){
        dismiss(animated: true, completion: nil)
    }
}
