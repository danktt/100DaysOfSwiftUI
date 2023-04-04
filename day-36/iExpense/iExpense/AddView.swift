//
//  AddView.swift
//  iExpense
//
//  Created by Dan on 03/04/23.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expenses: Expenses
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @State private var typeCurrency = ""
    
    
    let types = ["Business", "Personal"]
    
    let typeCurrencys = ["USD", "EUR", "JPY"]
    
    var body: some View {
        NavigationView {
                    Form {
                        TextField("Name", text: $name)

                        Picker("Type", selection: $type) {
                            ForEach(types, id: \.self) {
                                Text($0)
                            }
                        }
                        
                        Picker("",selection: $typeCurrency){
                            ForEach(typeCurrencys, id: \.self){
                                Text($0)
                            }
                        }.pickerStyle(.segmented)
                        
                        TextField("Amount", value: $amount, format: .currency(code: typeCurrency))
                            .keyboardType(.decimalPad)
                        
                       
                  
                    }
                    .navigationTitle("Add new expense")
                    .toolbar{
                        Button("Save"){
                            let item = ExpenseItem(name: name, type: type, amount: amount, currency: typeCurrency)
                            expenses.items.append(item)
                            dismiss()
                        }
                    }
                }
            }
    }


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
