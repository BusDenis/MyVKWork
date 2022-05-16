//
//  PhotoCollectionViewCell.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 10.04.2022.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var likeControl: LikeControl!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        likeControl.addTarget(self, action: #selector(likeControlTapped), for: .touchUpInside)
    }
    
    
    @objc
    func likeControlTapped() {
        likeControl.isSelected = !likeControl.isSelected
    }
    
    
    
}
