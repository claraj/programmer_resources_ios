//
//  Resource.swift
//  Programmer_Resources
//
//  Created by student1 on 2/8/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

struct Resource {
    let name: String
    let description: String
    let url: URL
}


extension Resource {
    
    init (dictionary: [String: String]) {
        name = dictionary["name"]! as String
        description = dictionary["description"]! as String
        let urlString = dictionary["url"]! as String
        url = URL(string: urlString)!
    }
}
