//
//  GroupCell.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit

class GroupCell: UITableViewCell {

    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        // Initialization code
    }
    
    
    @IBOutlet weak var avaGroup: UIImageView!
    
    @IBOutlet weak var groupName: UILabel!
    
   
    

    
    var button: UIButton!

        var buttonAction: ((Any) -> Void)?

        @objc func buttonPressed(sender: Any) {
            self.buttonAction?(sender)
        }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
