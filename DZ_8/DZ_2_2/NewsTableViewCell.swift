//
//  NewsTableViewCell.swift
//  DZ_2_2
//
//  Created by Михаил on 08.01.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var publicationDate: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var repostButton: UIButton!
    @IBOutlet weak var watchesCount: UILabel!
    @IBOutlet weak var eyeButton: UIButton!
    
    @IBOutlet weak var textForNews: UILabel!
    @IBOutlet weak var newsLikesCount: UILabel!
    
    @IBOutlet weak var newsCommentsCount: UILabel!
    @IBOutlet weak var newsrepostsCount: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
