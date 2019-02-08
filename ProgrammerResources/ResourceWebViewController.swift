//
//  WebViewController.swift
//  ProgrammerResources_Redo
//
//  Created by student1 on 2/8/19.
//  Copyright © 2019 clara. All rights reserved.
//

import WebKit
import UIKit

class ResourceWebViewController: UIViewController {
    
    var resource: Resource!
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidAppear(_ animated: Bool) {
        let request = URLRequest(url: resource.url)
        webView.load(request)
    }
    
}
