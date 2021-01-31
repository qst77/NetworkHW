//
//  PhotoCollection.swift
//  DZ_2_2
//
//  Created by Михаил on 18.12.2020.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotoCollection: UICollectionViewController {

    var photovar = [UIImage]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionView.dataSource = self
        collectionView.delegate  = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

  

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("let's GO")
    }
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photovar.count
    }

    
    @IBAction func likeClick(_ button: UIButton) {
        
        // button action


            //check current value
        var likesCount = Int(button.title(for: .normal)!)!
        
        //var likesCount:Int = Int(likeLabel.text!)!
            if (button.imageView?.image == UIImage(systemName: "suit.heart")) {
                //set default
                button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                likesCount += 1

                button.tintColor = UIColor.red
                button.setTitleColor(UIColor.red, for: .normal)


            } else{
                // set like

               likesCount -= 1
                button.setImage(UIImage(systemName: "suit.heart"), for: .normal )
                button.tintColor = UIColor.black
                button.setTitleColor(UIColor.black, for: .normal)
            }

        button.setTitle(String(likesCount), for: .normal)
        //likeLabel.text = String(likesCount)
    }
    
   
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCll", for: indexPath) as! PhotoCell
       // likeLabel = cell.viewWithTag(1) as! UILabel
        cell.photo.image = photovar[indexPath.row]
        
        //cell.photo.image = photovar
        
    
        return cell
    }


}

