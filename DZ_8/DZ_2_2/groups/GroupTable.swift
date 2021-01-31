//
//  GroupTable.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit

class GroupTable: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groupsData.count
    }
    
    
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "customGroupCell", for: indexPath) as! GroupCell
        let group = groupsData[indexPath.row] as Group
        
    
        cell.avaGroup.layer.cornerRadius = 37
        cell.avaGroup?.image = UIImage(named: group.imageName)
        cell.groupName?.text = group.name
        return cell
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            otherGroups.append(groupsData[indexPath.row])
            groupsData.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
          
        } else if editingStyle == .insert {
            
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }



}
