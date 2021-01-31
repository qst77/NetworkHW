//
//  NewsTableView.swift
//  DZ_2_2
//
//  Created by Михаил on 08.01.2021.
//

import UIKit

class NewsTableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //tableView.delegate = self
        //tableView.dataSource = self
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return newsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NewsTableViewCell
        let oneNews = newsData[indexPath.row] as News
        cell.newsAuthor.text = oneNews.newsAuthor
        cell.publicationDate.text = oneNews.newsData
        cell.newImage.image = oneNews.newsImage
        cell.newsLikesCount.text = String(oneNews.likesCount)
        cell.newsrepostsCount.text = String(oneNews.repostsCount)
        cell.watchesCount.text = String(oneNews.watchesCount)
        cell.newsCommentsCount.text = String(oneNews.commentsCount)
        cell.textForNews.text = oneNews.textForNews
        return cell
    }


}
