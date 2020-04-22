//
//  LogFormView.swift
//  KeepMoney
//
//  Created by Sina Rabiei on 4/22/20.
//  Copyright © 2020 Sina Rabiei. All rights reserved.
//

import SwiftUI
import CoreData

struct LogFormView: View {
        
    @State var name: String = ""
    @State var amount: Double = 0
    @State var category: Category = .utilities
    @State var date: Date = Date()
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var title: String {
        "Create Expense Log"
    }
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                    .disableAutocorrection(true)
                TextField("Amount", value: $amount, formatter: Utils.numberFormatter)
                    .keyboardType(.numbersAndPunctuation)
                    
                Picker(selection: $category, label: Text("Category")) {
                    ForEach(Category.allCases) { category in
                        Text(category.rawValue.capitalized).tag(category)
                    }
                }
                DatePicker(selection: $date, displayedComponents: .date) {
                    Text("Date")
                }
            }

            .navigationBarItems(
                leading: Button(action: self.onCancelTapped) { Text("Cancel")},
                trailing: Button(action: self.onSaveTapped) { Text("Save")}
            ).navigationBarTitle(title)
            
        }
        
    }
    
    private func onCancelTapped() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    private func onSaveTapped() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
        self.presentationMode.wrappedValue.dismiss()
    }
    
}

struct LogFormView_Previews: PreviewProvider {
    static var previews: some View {
        return LogFormView()
    }
}
