//
//  ViewController.swift
//  swift-tableview-sample
//
//  Created by Shintaro Ishikawa on 2020/03/20.
//  Copyright © 2020 trajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // tableに表示するセル数を返す
        return tables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // storyboardに設定したidentifierをもとに、ソース側でテーブルのセルごとにデータ設定していく
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // 各セルに変数tablesの値を表示できるように設定する
        cell.textLabel?.text = tables[indexPath.row]
        
        return cell
    }
    
    var tables:[String] = [
        "Augustus", "Tiberius", "Caligula", "Claudius", "Nero",
        "Galba", "Otho", "Vitellivs", "Vespasianvs", "Titvs",
        "Domitianvs", "Nerva", "Traianvs", "Hadrianvs", "Antoninvs",
        "Marcvs Avrelivs", "Lvcivs Vervs", "Commodvs", "Pertinax", "Didivs Ivlianvs",
        "Septimvs Severvs", "Caracalla", "Geta"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tableViewCellをこのViewで使うことを宣言する
        tableView.delegate = self
        tableView.dataSource = self
    }
        
    // storyboardからTableViewを紐付ける
    @IBOutlet weak var tableView: UITableView!
    
}

