//
//  DataHandler.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 04/12/2023.
//

import Foundation

class DataHandler {
    var categoryList: Array = Array<Category>()
    
    init() {
        print("Initializing DataHandler!")
        categoryList.append(Category(name: "Food", imageName: "FoodImage"))
        categoryList.append(Category(name: "Vegetables", imageName: "VegatablesImage"))
        categoryList.append(Category(name: "Books", imageName: "BooksImage"))
        categoryList.append(Category(name: "Fish", imageName: "FishImage"))

    }
    
    static let shared: DataHandler = {
        return DataHandler()
    }()
    
    func getCategoryList() -> Array<Category> {
        return categoryList
    }
}
