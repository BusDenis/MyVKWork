//
//  LikeControl.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 19.04.2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet weak var imageViewLike: UIImageView?
    @IBOutlet weak var counterLabel: UILabel?
    
    var likesCounter: Int = 0
    
    override var isSelected: Bool {
        didSet {
            imageViewLike?.image = isSelected ? UIImage(named: "Like") : UIImage(named: "LikeFree")
            
            if isSelected {
                likesCounter += 1
            } else {
                likesCounter -= 1
            }
            
            counterLabel?.text = "\(likesCounter)"
                
        }
    }
    
    
    
    
}
