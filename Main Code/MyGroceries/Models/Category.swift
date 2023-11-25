//
//  Categories.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import Foundation
import UIKit
import SwiftUI
import AlamofireImage


struct Category{
    var categoryName: String
    var categoryCount: Int
    var categoryLogo: UIImage
}

extension Category{
    static var mockCategories: [Category]  = [
        Category(categoryName: "Fruits", categoryCount: 1, categoryLogo: Image(imageLiteralResourceName: "Fruits")),
            Category(categoryName: "Meats", categoryCount: 1, categoryLogo: Image(imageLiteralResourceName: "Meats")),
                Category(categoryName: "Vegetables", categoryCount: 1, categoryLogo: Image(imageLiteralResourceName: "vegetables"))
                   
        ]

}
