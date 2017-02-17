//
//  GLNUserFormInputTableViewCell.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/12/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

class GLNUserFormInputTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        /* TODO: implement a timer-based become/resign first-responder system for the text field
         so we don't have to write it in all of our tableviews */
    }
    
    /**
        The Label containing the content that will be displayed as the header of the cell.
     */
    @IBOutlet weak var lblCellDescription: UILabel!
    
    /**
        The text field provided to the user for entering input. Currently no validation is performed.
     */
    
    @IBOutlet weak var txtFieldCellInput: UITextField!

}
