//
//  DetailViewController.swift
//  swift-tableview-sample
//
//  Created by Shintaro Ishikawa on 2020/03/21.
//  Copyright © 2020 trajan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var emperorName: UILabel!
    @IBOutlet weak var emperorImage: UIImageView!
    @IBOutlet weak var emperorDescription: UITextView!

    var data: RomanEmperor?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = data {
            emperorName.text = data.japaneseName
            emperorImage.image = UIImage(named: data.imageFileName)
            emperorDescription.text = data.description
        }

    }

}
