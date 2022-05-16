//
//  MyGroupTableViewCell.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 18.04.2022.
//

import UIKit

class MyGroupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var avatarimageMyGroup: UIImageView!
    
    @IBOutlet weak var labelMyGroup: UILabel!
    
    @IBOutlet weak var labelCommentMyGroup: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
