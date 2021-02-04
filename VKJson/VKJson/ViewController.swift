//
//  ViewController.swift
//  VKJson
//
//  Created by Михаил on 03.02.2021.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {


    @IBOutlet weak var webView: WKWebView! {
        didSet{
                   webView.navigationDelegate = self
               }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
               urlComponents.host = "oauth.vk.com"
               urlComponents.path = "/authorize"
               urlComponents.queryItems = [
                   URLQueryItem(name: "client_id", value: "7750216"),
                   URLQueryItem(name: "display", value: "mobile"),
                   URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
                   URLQueryItem(name: "scope", value: "262150"),
                   URLQueryItem(name: "response_type", value: "token"),
                   URLQueryItem(name: "v", value: "5.68")
               ]
               
               let request = URLRequest(url: urlComponents.url!)
               print (request)
               webView.load(request)
                
          
 
        // Do any additional setup after loading the view.
    }


}

extension ViewController {
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        
        guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
            decisionHandler(.allow)
            return
        }
        print ("infp \(fragment)")
        let params = fragment
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=") }
            .reduce([String: String]()) { result, param in
                var dict = result
                let key = param[0]
                let value = param[1]
                dict[key] = value
                return dict
        }
        
        let token = params["access_token"]
        var userID = params["user_id"]
        
        print("TOKEN = \(token)")
        print ("user id \(userID)")
        let session = Session.instance
        session.token = String(token!)
       
        decisionHandler(.cancel)
        
      

        self.performSegue(withIdentifier: "ShowRequestController", sender: self)
        
  
    }
}


