//
//  XibTestTableViewCell.swift
//  SPMTableViewCellXib
//
//  Created by Brandon Hostetter on 9/21/20.
//

import UIKit

public class XibTestTableViewCell: UITableViewCell {
    @IBOutlet public weak var titleLabel: UILabel!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.text = "HERE"
    }
}
