//
//  SearchTableViewCell.swift
//  BU
//
//  Created by Aman Kumar on 21/01/21.
//

import UIKit

class SearchTableViewCell: SBaseTableViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
}
