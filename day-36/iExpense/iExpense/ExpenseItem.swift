//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Dan on 03/04/23.
//

import Foundation


struct ExpenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
