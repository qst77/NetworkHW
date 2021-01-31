//
//  LoadingViewController.swift
//  DZ_2_2
//
//  Created by Михаил on 15.01.2021.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var point1: UILabel!
    
    @IBOutlet weak var point2: UILabel!
    
    @IBOutlet weak var point3: UILabel!
    
    @IBOutlet weak var loadingView: UIView!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
                 UIView.animate(withDuration: 0.5, delay: 0.3, options: [.repeat, .autoreverse], animations: {
                     
                             UIView.setAnimationRepeatCount(3)
                             UIView.setAnimationRepeatAutoreverses(true)
                             self.point1.alpha = 0.0
                             
                     })
                 UIView.animate(withDuration: 0.5, delay: 0.6, options: [.repeat, .autoreverse], animations: {
                             UIView.setAnimationRepeatCount(3)
                             UIView.setAnimationRepeatAutoreverses(true)
                             self.point2.alpha = 0.0
                     })
                 UIView.animate(withDuration: 0.5, delay: 0.9, options: [.repeat, .autoreverse], animations: {
                     UIView.setAnimationRepeatCount(3)
                     UIView.setAnimationRepeatAutoreverses(true)
                     self.point3.alpha = 0.0
                     },
                 completion: { finished in
                    self.performSegue(withIdentifier: "StartWork", sender: self)
                         })
        
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
          
           
        //open another view
      //  self.performSegue(withIdentifier: "Friends", sender:self)
    
    }
    

   

}
