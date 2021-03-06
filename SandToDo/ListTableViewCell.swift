//
//  ListTableViewCell.swift
//  SandToDo
//
//  Created by Tomek Buslowski on 07.09.2017.
//  Copyright © 2017 Tomek Buslowski. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    // MARK: - Propertries
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
