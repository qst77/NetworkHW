//
//  FriendsViewControllerTableViewController.swift
//  DZ_2_2
//
//  Created by Михаил on 15.12.2020.
//





import UIKit

class FriendsViewControllerTableViewController: UITableViewController {
    var friends: [Friend] = friendsData

    @IBOutlet weak var img: UIImageView!
   
    
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PhotoVC") as? PhotoCollectionViewController
        let name:String = "ava" + String(indexPath.row)
        vc?.image = UIImage(named: name)! 
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
  
   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
     
        let friend = friends[indexPath.row] as Friend
        //print (indexPath.row)
        
        
        if let nameLabel = cell.viewWithTag(100) as? UILabel{
            nameLabel.text = friend.name + " " + friend.surname
        }
        if let townLabel = cell.viewWithTag(101) as? UILabel{
            townLabel.text = friend.town
        }
        if let avatarImageView = cell.viewWithTag(102) as? UIImageView{
            let name:String = "ava" + String(indexPath.row)
            avatarImageView.layer.cornerRadius = 37
            avatarImageView.image = UIImage(named: name)
        }
   
        
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

  /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

