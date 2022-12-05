//
//  ActivityTableViewCell.swift
//  Challenge3
//
//  Created by Luis Fernando Salas Gave on 5/12/22.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
       
    @IBOutlet weak var activityLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
