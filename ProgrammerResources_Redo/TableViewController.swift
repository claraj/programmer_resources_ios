//
//  TableViewController.swift
//  ProgrammerResources_Redo
//
//  Created by student1 on 2/8/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var resources: [Resource]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = resources![indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("seg \(segue.identifier)")
        if segue.identifier == "showDetail" {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            let selectedResource = resources![selectedRow]
            let detailController = segue.destination as! DetailViewController
            detailController.resource = selectedResource
        }
    }
    
}
