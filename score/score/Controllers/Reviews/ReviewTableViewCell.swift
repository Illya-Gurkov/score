//
//  ReviewTableViewCell.swift
//  score
//
//  Created by Illya Gurkov on 24.08.22.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {
    @IBOutlet var nameLbl: UILabel!
    
    @IBOutlet var textLbl: UILabel!
    
    @IBOutlet var ratingLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
