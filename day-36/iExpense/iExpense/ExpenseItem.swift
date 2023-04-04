//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dan on 03/04/23.
//

import Foundation


struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
    let currency : String
}
