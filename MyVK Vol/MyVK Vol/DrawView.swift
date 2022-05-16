//
//  DrawView.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 04.05.2022.
//

import UIKit

class DrawView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor.red.cgColor
        layer.cornerRadius = 25
        
        // layer.masksToBounds = true
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 5, height: 5)
        
    
        
        
        
    }

}

class DrawView1: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
      
        layer.cornerRadius = 25
        
      
        
    }

}
