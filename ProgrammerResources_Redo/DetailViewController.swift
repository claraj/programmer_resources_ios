//
//  ViewController.swift
//  ProgrammerResources_Redo
//
//  Created by student1 on 2/8/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var name: UILabel!
    @IBOutlet var descr: UILabel!
    @IBOutlet var url: UILabel!
    
    var resource: Resource! {
        didSet {
            navigationItem.title = resource.name
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("DSFDSGDFG")
        
        navigationItem.backBarButtonItem?.title = "Resources"
        
        name!.text = resource.name
        descr.text = resource.description
        url.text = resource.url.absoluteString
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.showWeb))
        
        url.addGestureRecognizer(tap)
    }

    
    @objc func showWeb() {
        print("label tapped" )
        
        performSegue(withIdentifier: "showWebView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            let webView = segue.destination as! ResourceWebViewController
            webView.resource = resource 
        }
    }
    

}

