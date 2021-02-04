//
//  SingleTone.swift
//  VKJson
//
//  Created by Михаил on 04.02.2021.
//

import Foundation
class Session {
    
    static let instance = Session()
    
    private init(){}
    
    var token:String = ""
    var userId:Int = 0
}
