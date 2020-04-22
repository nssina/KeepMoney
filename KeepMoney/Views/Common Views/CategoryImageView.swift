//
//  CategoryImageView.swift
//  KeepMoney
//
//  Created by Sina Rabiei on 4/22/20.
//  Copyright © 2020 Sina Rabiei. All rights reserved.
//

import SwiftUI

struct CategoryImageView: View {
    
    let category: Category
    
    var body: some View {
        Image(systemName: category.systemNameIcon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 8)
            .foregroundColor(category.color)
            .background(category.color.opacity(0.1))
            .cornerRadius(18)
    }
}

struct CategoryImageView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImageView(category: .donation)
    }
}
