//
//  SampleData.swift
//  DZ_2_2
//
//  Created by Михаил on 15.12.2020.
//

import Foundation
import UIKit

let newsData:[News] = [
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 1, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это первая новость"),
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 2, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это вторая нововость"),
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 3, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это третья новость"),
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 4, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это четвертая новость"),
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 5, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это пятая новость"),
    News(newsAuthor: "Author", newsData: "01.01.2021", newsImage: UIImage(named: "newsPhoto")!, likesCount: 6, repostsCount: 0, commentsCount: 0, watchesCount: 0, textForNews: "Это шестая новость"),
    
]

let friendsData:[Friend] = [
    Friend(id: 0, name: "Сергей Симонов", avatar: UIImage(named: "ava0")!),
    Friend(id: 1, name: "Андрей Сахаров", avatar: UIImage(named: "ava1")!),
    Friend(id: 2, name: "Иван Кац", avatar: UIImage(named: "ava2")!),
    Friend(id: 3, name: "Михаил Блюменкранц", avatar: UIImage(named: "ava0")!),
    Friend(id: 4, name: "Алексей Бондарев", avatar: UIImage(named: "ava1")!),
    Friend(id: 5, name: "Владимир Костюшкин", avatar: UIImage(named: "ava2")!),
    Friend(id: 6, name: "Виктор Смирнов", avatar: UIImage(named: "ava0")!),
    Friend(id: 7, name: "Дмитрий Горбунов", avatar: UIImage(named: "ava1")!),
    Friend(id: 8, name: "Роман Грачевский", avatar: UIImage(named: "ava2")!),
    Friend(id: 9, name: "Георгий Петров", avatar: UIImage(named: "ava0")!)
]

//let friendsData = [Friend(id: 0, name: "Сергей Симонов", avatar: UIImage.(named: "ava0")]





//let friendsData = [ Friend(id: 0, name:"Сергей", surname: "Симонов", town: "Москва"),
//                    Friend(id: 1, name:"Михаил", surname: "Иванов", town: "Санкт-Петербург"),
//                    Friend(id: 2, name:"Алексей", surname: "Петров", town: "казань") ]


var groupsData = [Group(name: "Типичный программист", subscribersCount: 10_000, imageName: "group0"),
                  Group(name: "MDK", subscribersCount: 900_000, imageName: "group1"),
                  Group(name: "1xbet", subscribersCount: 10_000_000, imageName: "group2")]

var otherGroups  = [Group(name: "Группа 1", subscribersCount: 10_000, imageName: "otherGroup0"),
                    Group(name: "Группа 2", subscribersCount: 900_000, imageName: "otherGroup1"),
                    Group(name: "Группа 3", subscribersCount: 10_000_000, imageName: "otherGroup2")]
