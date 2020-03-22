//
//  ViewController.swift
//  swift-tableview-sample
//
//  Created by Shintaro Ishikawa on 2020/03/20.
//  Copyright © 2020 trajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var data = RomanEmperor.createData()
    let identifier:String = "tableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: UITableView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail",
            let indexPath = tableView?.indexPathForSelectedRow,
            let destinationViewController: DetailViewController = segue.destination as? DetailViewController {
            destinationViewController.data = data[indexPath.row]
        }
    }

    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TableViewCell {
            cell.configureCell(data[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

}

