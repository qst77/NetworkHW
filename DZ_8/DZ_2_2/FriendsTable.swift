//
//  FriendsTable.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit

class FriendsTable: UITableViewController, UISearchBarDelegate{
    
    
    
    
    
    

    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    var sections: [String: [Friend]] = [:]
    var keys:[String] = []

    var filteredData: [Friend]!

    var isfiltering: Bool = false
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
     
        
        if searchText == "" {
            filteredData.removeAll()
            filteredData = friendsData
            sections.removeAll()
            keys.removeAll()
            
            filteredData.forEach{friend in
                let firstLetter = String(friend.name.first!)
                if sections[firstLetter] != nil{
                    sections[firstLetter]!.append(friend)
                }
                else{
                    sections[firstLetter] = [friend]
                }
                keys = Array(sections.keys).sorted(by: <)
            }
            self.tableView.reloadData()
            
          
          
        } else{
            filteredData.removeAll()
            isfiltering = true
            for friend in friendsData{
                if(friend.name.lowercased().contains(searchText.lowercased())){
                    filteredData.append(friend)
                    
                }
            }
            
            sections.removeAll()
            keys.removeAll()
            
            filteredData.forEach{friend in
                let firstLetter = String(friend.name.first!)
                if sections[firstLetter] != nil{
                    sections[firstLetter]!.append(friend)
                }
                else{
                    sections[firstLetter] = [friend]
                }
                keys = Array(sections.keys).sorted(by: <)
            }
            
       
       
           
            self.tableView.reloadData()
        }
        
        
       
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        searchBar.delegate = self
        tableView.dataSource = self
        tableView.delegate = self

        if (!isfiltering) {filteredData = friendsData}
        
            filteredData.forEach{friend in
                let firstLetter = String(friend.name.first!)
                if sections[firstLetter] != nil{
                    sections[firstLetter]!.append(friend)
                }
                else{
                    sections[firstLetter] = [friend]
                }
                keys = Array(sections.keys).sorted(by: <)
            }
    
        
        //filteredData = friendsData
      
        
        
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return keys[section]
        
    }

    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
       
        let key = keys[section]
        let count = sections[key]!.count
        return count
        
    }
    

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCellView
        
        let key = keys[indexPath.section]
        let friend = sections[key]![indexPath.row]
//
            let mainView: UIView = {
                let view = UIView()
                view.layer.masksToBounds = false
                view.backgroundColor = .black
                view.layer.shadowRadius = 1
                view.contentMode = .scaleAspectFit
                view.layer.shadowOffset = CGSize(width: 1, height: 2)
                view.layer.shadowOpacity = 1
                view.layer.cornerRadius = 37
                view.translatesAutoresizingMaskIntoConstraints = false
                return view
            }()

            // Creates your contentsLayer
            // Add all your subsequent subviews to your contentsLayer
            let contentsLayer: UIImageView = {
                let view = UIImageView()
                view.image = friend.avatar
                view.contentMode = .scaleAspectFit
                view.backgroundColor = .orange
                view.layer.cornerRadius = 35
                view.layer.masksToBounds = true
                view.translatesAutoresizingMaskIntoConstraints = false
                return view
            }()

        
        cell.friendAva.backgroundColor = .white
        cell.friendAva.addSubview(mainView)
        
            
            mainView.addSubview(contentsLayer)

            NSLayoutConstraint.activate([

                // Constrains your mainView to the ViewController's view

                mainView.heightAnchor.constraint(equalToConstant: 70),
                mainView.widthAnchor.constraint(equalToConstant: 70),

                // Constrains your contentsLayer to the mainView

                contentsLayer.heightAnchor.constraint(equalTo: mainView.heightAnchor),
                contentsLayer.widthAnchor.constraint(equalTo: mainView.widthAnchor)
                ])
        
     
 
            cell.labelCell.text = friend.name
       
        
        
        
            
            //cell.labelCell?.text = friend.name + " " + friend.surname
            return cell
        
        
    }
    
    var photoLib = [UIImage(named: "ava0")!, UIImage(named: "ava1")!, UIImage(named: "ava2")!, UIImage(named: "group0")!, UIImage(named: "group1")!, UIImage(named: "group2")!]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueCollection" {
           
            guard let destinationVC = segue.destination as? PhotoView else { return }
            if let indexPath = tableView.indexPathForSelectedRow{
                
              
                
                destinationVC.photovar.append(contentsOf: photoLib)
            }
        }
    }
 
}
