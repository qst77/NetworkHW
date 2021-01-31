//
//  CustomCellView.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit


//Protocol declaration

class CustomCellView: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupGestureRecognizer(friendAva)
    }


    func setupGestureRecognizer(_ localSender: UIImageView){
        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(avatarTapped))
        localSender.isUserInteractionEnabled = true
        gestureTap.numberOfTapsRequired = 1
        localSender.addGestureRecognizer(gestureTap)
    }
    
    @objc func avatarTapped(_ sender: UIGestureRecognizer){
//        if let animation = sender.view{
//            let animation = CASpringAnimation(keyPath: "transform.scale")
//            animation.duration = 0.5
//            animation.fromValue = 1.0
//            animation.toValue = 0.8
//            animation.damping = 0.1
//            animation.stiffness = 200
//            animation.mass = 0.5
//            frie
//        }
        
        
        let animation = sender.view

        animation!.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        UIView.animate(withDuration: 1.2,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 0.2,
                       options: [.curveEaseOut],
                       animations: {
                        animation!.transform = CGAffineTransform(scaleX: 1, y: 1)

        })
        
    }
    

    @IBOutlet weak var labelCell: UILabel!
    
    @IBOutlet weak var friendAva: UIImageView!
    
 
    
    

    
            override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
