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
        let plistURL = Bundle.main.url(forResource: "ProgrammerResources", withExtension: ".plist")
        let resourcesPlist = NSArray(contentsOf: plistURL!)
//        resources = resourcesPlist.map(Resource.init)
        
        resources = [ Resource(dictionary: ["name":"sdfsdf", "description":"sdfsf", "url":"http://whatever.com"]) ]
        
        print(resourcesPlist)
    }
}
