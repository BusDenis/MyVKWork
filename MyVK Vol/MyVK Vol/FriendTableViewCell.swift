//
//  FriendTableViewCell.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 10.04.2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarimageView: UIImageView!
  
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var drawView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
