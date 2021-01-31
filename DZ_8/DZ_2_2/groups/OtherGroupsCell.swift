//
//  OtherGroupsCell.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit

class OtherGroupsCell: UITableViewCell {

    @IBOutlet weak var imageOtherGroup: UIImageView!
    
    @IBOutlet weak var nameOtherGroup: UILabel!

    
    @IBOutlet weak var addButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
