//
//  Groups.swift
//  DZ_2_2
//
//  Created by Михаил on 15.12.2020.
//

import Foundation

import UIKit
 
class Group: NSObject {
  var name: String
  var subscribersCount: Int
    var imageName :String
  
    init(name: String, subscribersCount: Int, imageName :String) {
    self.name = name
    self.subscribersCount = subscribersCount
    self.imageName = imageName
    super.init()
  }
}
