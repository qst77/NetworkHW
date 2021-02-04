//
//  RequestViewController.swift
//  VKJson
//
//  Created by Михаил on 04.02.2021.
//

import UIKit

class RequestViewController: UIViewController {

    let session = Session.instance
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //поиск группы по названию
    @IBOutlet weak var groupsForSearch: UITextField!
    
    @IBAction func searchGroups(_ sender: Any) {
        // Конфигурация по умолчанию
                let configuration = URLSessionConfiguration.default
        // собственная сессия
                let session_url =  URLSession(configuration: configuration)
        let q:String = groupsForSearch.text!
        // создаем url из строки
                let url = URL(string: "https://api.vk.com/method/groups.search?access_token=\(session.token)&q=\(q)&type=group&offset=10&v=5.68&")
                
        // задача для запуска
                let task = session_url.dataTask(with: url!) { (data, response, error) in
        // в замыкании данные, полученные от сервера, мы преобразуем в json
                    let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        // выводим в консоль
                    
                    print("Найденные группы: \(json)")
                }
        // запускаем задачу
                task.resume()
    }
    //показать группки
    @IBAction func showGroups(_ sender: Any) {
        // Конфигурация по умолчанию
                let configuration = URLSessionConfiguration.default
        // собственная сессия
                let session_url =  URLSession(configuration: configuration)
                
        // создаем url из строки
                let url = URL(string: "https://api.vk.com/method/groups.get?access_token=\(session.token)&extended=1&v=5.68&")
                
        // задача для запуска
                let task = session_url.dataTask(with: url!) { (data, response, error) in
        // в замыкании данные, полученные от сервера, мы преобразуем в json
                    let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        // выводим в консоль
                    
                    print(json)
                }
        // запускаем задачу
                task.resume()
    }
    //показать фотки
    @IBAction func showPhotos(_ sender: Any) {
        
        // Конфигурация по умолчанию
                let configuration = URLSessionConfiguration.default
        // собственная сессия
                let session_url =  URLSession(configuration: configuration)
                
        // создаем url из строки
                let url = URL(string: "https://api.vk.com/method/photos.get?access_token=\(session.token)&album_id=profile&rev=0&extended=1&v=5.68&")
                
        // задача для запуска
                let task = session_url.dataTask(with: url!) { (data, response, error) in
        // в замыкании данные, полученные от сервера, мы преобразуем в json
                    let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        // выводим в консоль
                    
                    print(json)
                }
        // запускаем задачу
                task.resume()
    }
    //показать друзей
    @IBAction func showFriendsList(_ sender: Any) {
        
        // Конфигурация по умолчанию
                let configuration = URLSessionConfiguration.default
        // собственная сессия
                let session_url =  URLSession(configuration: configuration)
                
        // создаем url из строки
                let url = URL(string: "https://api.vk.com/method/friends.get?access_token=\(session.token)&fields=city,domain&lang=ru&count=100&v=5.68&")
                
        // задача для запуска
                let task = session_url.dataTask(with: url!) { (data, response, error) in
        // в замыкании данные, полученные от сервера, мы преобразуем в json
                    let json = try? JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
        // выводим в консоль
                    
                    print(json)
                }
        // запускаем задачу
                task.resume()
        
        
        
        

    }

}
