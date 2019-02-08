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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("DSFDSGDFG")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.showWeb))
        
        url.addGestureRecognizer(tap)
    }

    
    @objc func showWeb() {
        print("label tapped" )
    }

}

