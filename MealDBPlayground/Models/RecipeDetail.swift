//
//  RecipeDetail.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 4/22/24.
//

import Foundation

struct Ingredient: Identifiable {
    var id: UUID = UUID()
    var name: String
    var measure: String
}

struct RecipeDetail: Identifiable {
    var id: String
    var name: String
    var category: String
    var instructions: String
    var mealThumbnailURL: URL?
    var keywords: [String]
    var ingredients: [Ingredient]
}
