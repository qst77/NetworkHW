//
//  CustomAvatar.swift
//  DZ_2_2
//
//  Created by Михаил on 22.12.2020.
//

import UIKit

class CustomAvatar: UIImageView {

    // Creates your mainView
    var mainView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = false
        view.backgroundColor = .black
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 3
        view.layer.cornerRadius = 90
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Creates your contentsLayer
    // Add all your subsequent subviews to your contentsLayer
    var contentsLayer: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "avatar")
        view.backgroundColor = .orange
        view.layer.cornerRadius = 90
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(mainView)
        mainView.addSubview(contentsLayer)
        
        NSLayoutConstraint.activate([
            
            // Constrains your mainView to the ViewController's view
            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainView.heightAnchor.constraint(equalToConstant: 180),
            mainView.widthAnchor.constraint(equalToConstant: 180),
            
            // Constrains your contentsLayer to the mainView
            contentsLayer.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            contentsLayer.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            contentsLayer.heightAnchor.constraint(equalTo: mainView.heightAnchor),
            contentsLayer.widthAnchor.constraint(equalTo: mainView.widthAnchor)
            ])
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
