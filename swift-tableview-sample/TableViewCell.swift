//
//  TableViewCell.swift
//  swift-tableview-sample
//
//  Created by Shintaro Ishikawa on 2020/03/22.
//  Copyright © 2020 trajan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private var emperorName: UILabel!
    @IBOutlet weak var emperorImage: UIImageView!

    override func prepareForReuse() {
        super.prepareForReuse()
        emperorName.text = nil
    }

    func configureCell(_ data: RomanEmperor) {
        emperorName!.text = data.japaneseName
        emperorImage.image = UIImage(named: data.imageFileName)
    }
}
