//
//  SVARates.swift
//  Single View App
//
//  Created by Cristian Peña Barrios on 25/05/23.
//

import Foundation

// MARK: - Rates
struct RatesResponse  :  Codable {
    var success    :  Bool?
    var timestamp  :  Int?
    var base       :  String?
    var date       :  String?
    var rates      :  [String: Double]?
}
