//
//  RocketTableViewCell.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 20.12.2023.
//

import UIKit

class RocketTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rocketName: UILabel!
    @IBOutlet weak var rocketImageView: UIImageView!
    @IBOutlet weak var rocketDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
