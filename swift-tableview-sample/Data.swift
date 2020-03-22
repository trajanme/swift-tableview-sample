//
//  data.swift
//  swift-tableview-sample
//
//  Created by Shintaro Ishikawa on 2020/03/22.
//  Copyright © 2020 trajan. All rights reserved.
//

import Foundation

struct RomanEmperor {
    let id: Int
    let name: String
    let japaneseName: String
    let imageFileName: String
    let reignFrom: String
    let reignTo: String
    let description: String
}

extension RomanEmperor {
    static func createData () -> [RomanEmperor] {
        return [
            RomanEmperor(id: 1, name: "Augustus", japaneseName: "アウグストゥス", imageFileName: "augustus.jpg", reignFrom: "BC27", reignTo: "AD14", description: "ローマ帝国初代皇帝。ユリウス・カエサルから後継者に指名されて皇帝となる。ローマ帝国の土台を築く。"),
            RomanEmperor(id: 2, name: "Tiberius", japaneseName: "ティベリウス", imageFileName: "tiberius.jpg", reignFrom: "AD14", reignTo: "AD37", description: "ローマ帝国第2代皇帝。抜群の政治感覚で帝国の土台を盤石にするも、最後は離島でひっそりと暮らす。"),
            RomanEmperor(id: 13, name: "Traianvs", japaneseName: "トライアヌス", imageFileName: "traianvs.jpg", reignFrom: "AD98", reignTo: "AD117", description: "ローマ帝国第13代皇帝。五賢帝の一人で初の属州生まれの皇帝。文武ともに辣腕を発揮し、ローマ帝国史上最大の版図を実現した。")
        ]
    }
}
