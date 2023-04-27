//
//  oneTableViewCell.swift
//  tableviewStruct&Array
//
//  Created by Mohan K on 10/02/23.
//

import UIKit

class oneTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!

    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
