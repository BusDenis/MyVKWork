//
//  AllGroupTableViewCell.swift
//  MyVK Vol
//
//  Created by Денис Бусурин on 18.04.2022.
//

import UIKit

class AllGroupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var avatarimageAllGroup: UIImageView!
    
    @IBOutlet weak var labelAllGroup: UILabel!
    
    
    @IBOutlet weak var labelCommentAllGroup: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
