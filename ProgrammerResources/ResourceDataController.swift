//
//  ResourceDataController.swift
//  Programmer_Resources
//
//  Created by student1 on 2/8/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

class ResourceDataController {
    
    let resources: [Resource]
    
    init()  {
        let plistURL = Bundle.main.path(forResource: "ProgrammerResources", ofType: ".plist")
        let resourcesPlist = NSArray(contentsOfFile: plistURL!)
        
        var resources: [Resource] = []

        for r in resourcesPlist! {
            let dict =  r as! [String: String]
            let res = Resource(dictionary: dict)
            resources.append(res)
        }
        
        self.resources = resources
    }
}




