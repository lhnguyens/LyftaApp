//
//  WebBrowserViewController.swift
//  AppTest2
//
//  Created by Luan Nguyen on 2019-02-19.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import UIKit
import WebKit

class WebBrowserViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView2: WKWebView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.jefit.com/exercises")!
        webView2.load(URLRequest(url: url))
        webView2.allowsBackForwardNavigationGestures = true

        
    }
    

  
}
