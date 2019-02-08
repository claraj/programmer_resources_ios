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
    
    var resource: Resource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("DSFDSGDFG")
        
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

}

