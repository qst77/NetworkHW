//
//  ViewController.swift
//  DZ_2_2
//
//  Created by Михаил on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var enterButtonField: UIButton!
    private let login = "admin"
    private let pass = "admin"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginField.layer.cornerRadius = 120
        passField.layer.cornerRadius = 20
        enterButtonField.layer.cornerRadius = 20
      
      
                
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (loginField.text == login && passField.text == pass){
            
           // self.performSegue(withIdentifier: "Loading", sender:self)
//            self.navigationController!.pushViewController(self.storyboard!.instantiateViewController(withIdentifier: "LoadingViewController") as UIViewController, animated: true)
            return true
        }  else {
            let alert = UIAlertController(title: "Ошибка",
                                          message: "Логин и/или пароль некорректны",
                                          preferredStyle: .alert)
            
            let action = UIAlertAction(title: "ОК",
                                       style: .default){
                    (action) in
                self.loginField.text = ""
                self.passField.text = ""
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            return false
        }
    }


   
    
    
}

