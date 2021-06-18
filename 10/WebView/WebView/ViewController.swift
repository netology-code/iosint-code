//
//  ViewController.swift
//  WebView
//
//  Created by Niki Pavlove on 18.02.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView.load(URLRequest(url: URL(string: "https://www.youtube.com/watch?v=IlU-zDU6aQ0")!))
        
    }


}

