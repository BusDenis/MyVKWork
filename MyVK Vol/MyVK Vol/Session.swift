//
//  Session.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 16.05.2022.
//

import Foundation

class Session {
    
    var token: String = ""
    var userId: Int = 0

    
    static let instance = Session()
    
    private init(){}  
    
  
}
