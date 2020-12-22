//
//  Tip.swift
//  Trekr
//
//  Created by Juanjo Valiño on 22/12/20.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
