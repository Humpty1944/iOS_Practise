//
//  ViewCellTableViewCell.swift
//  photo_viewer_app
//
//  Created by Назарова on 02.06.2020.
//  Copyright © 2020 Назарова. All rights reserved.
//

import UIKit

class ViewCellTableViewCell: UITableViewCell  {

    @IBOutlet weak var images: UIImageView!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
