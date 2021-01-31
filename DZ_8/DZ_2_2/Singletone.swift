//
//  Singletone.swift
//  DZ_2_2
//
//  Created by Михаил on 31.01.2021.
//

import Foundation


class Session {
    
    static let instance = Session()
    
    private init(){}
    
    var token:String = ""
    var userId:Int = 5
    
}
