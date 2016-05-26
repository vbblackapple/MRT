//
//  StationTableViewCell.swift
//  MRT
//
//  Created by Lin-Kai Huang on 5/19/16.
//  Copyright © 2016 Lin-Kai Huang. All rights reserved.
//

import UIKit

class StationTableViewCell: UITableViewCell {
    @IBOutlet weak var StationLineALabel: UILabel!
    @IBOutlet weak var StationLineBLabel: UILabel!
    @IBOutlet weak var StationNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
