//
//  RecipeDetailDTO.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 4/19/24.
//

import Foundation

class RecipeDetailDTO: Decodable {
    fileprivate let id: String
    fileprivate let name: String
    fileprivate let category: String
    fileprivate let instructions: String
    fileprivate let mealThumbnailURL: URL?
    fileprivate let keywords: String?

    fileprivate let ingredient1: String?
    fileprivate let ingredient2: String?
    fileprivate let ingredient3: String?
    fileprivate let ingredient4: String?
    fileprivate let ingredient5: String?
    fileprivate let ingredient6: String?
    fileprivate let ingredient7: String?
    fileprivate let ingredient8: String?
    fileprivate let ingredient9: String?
    fileprivate let ingredient10: String?
    fileprivate let ingredient11: String?
    fileprivate let ingredient12: String?
    fileprivate let ingredient13: String?
    fileprivate let ingredient14: String?
    fileprivate let ingredient15: String?
    fileprivate let ingredient16: String?
    fileprivate let ingredient17: String?
    fileprivate let ingredient18: String?
    fileprivate let ingredient19: String?
    fileprivate let ingredient20: String?
    fileprivate let measure1: String?
    fileprivate let measure2: String?
    fileprivate let measure3: String?
    fileprivate let measure4: String?
    fileprivate let measure5: String?
    fileprivate let measure6: String?
    fileprivate let measure7: String?
    fileprivate let measure8: String?
    fileprivate let measure9: String?
    fileprivate let measure10: String?
    fileprivate let measure11: String?
    fileprivate let measure12: String?
    fileprivate let measure13: String?
    fileprivate let measure14: String?
    fileprivate let measure15: String?
    fileprivate let measure16: String?
    fileprivate let measure17: String?
    fileprivate let measure18: String?
    fileprivate let measure19: String?
    fileprivate let measure20: String?

    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case category = "strCategory"
        case instructions = "strInstructions"
        case mealThumbnailURL = "strMealThumb"
        case keywords = "strTags"
        case ingredient1 = "strIngredient1"
        case ingredient2 = "strIngredient2"
        case ingredient3 = "strIngredient3"
        case ingredient4 = "strIngredient4"
        case ingredient5 = "strIngredient5"
        case ingredient6 = "strIngredient6"
        case ingredient7 = "strIngredient7"
        case ingredient8 = "strIngredient8"
        case ingredient9 = "strIngredient9"
        case ingredient10 = "strIngredient10"
        case ingredient11 = "strIngredient11"
        case ingredient12 = "strIngredient12"
        case ingredient13 = "strIngredient13"
        case ingredient14 = "strIngredient14"
        case ingredient15 = "strIngredient15"
        case ingredient16 = "strIngredient16"
        case ingredient17 = "strIngredient17"
        case ingredient18 = "strIngredient18"
        case ingredient19 = "strIngredient19"
        case ingredient20 = "strIngredient20"
        case measure1 = "strMeasure1"
        case measure2 = "strMeasure2"
        case measure3 = "strMeasure3"
        case measure4 = "strMeasure4"
        case measure5 = "strMeasure5"
        case measure6 = "strMeasure6"
        case measure7 = "strMeasure7"
        case measure8 = "strMeasure8"
        case measure9 = "strMeasure9"
        case measure10 = "strMeasure10"
        case measure11 = "strMeasure11"
        case measure12 = "strMeasure12"
        case measure13 = "strMeasure13"
        case measure14 = "strMeasure14"
        case measure15 = "strMeasure15"
        case measure16 = "strMeasure16"
        case measure17 = "strMeasure17"
        case measure18 = "strMeasure18"
        case measure19 = "strMeasure19"
        case measure20 = "strMeasure20"
    }
}

// MARK: RecipeDetailDTO -> RecipeDetail

extension RecipeDetail {
    init(fromDTO dto: RecipeDetailDTO) {
        var ingredients: [Ingredient] = []

        func appendIngredient(name: String?, measure: String?) {
            if let name,
               let measure,
               name != "" {
                let ingredient = Ingredient(name: name,
                                            measure: measure)
                ingredients.append(ingredient)
            }
        }

        appendIngredient(name: dto.ingredient1, measure: dto.measure1)
        appendIngredient(name: dto.ingredient2, measure: dto.measure2)
        appendIngredient(name: dto.ingredient3, measure: dto.measure3)
        appendIngredient(name: dto.ingredient4, measure: dto.measure4)
        appendIngredient(name: dto.ingredient5, measure: dto.measure5)
        appendIngredient(name: dto.ingredient6, measure: dto.measure6)
        appendIngredient(name: dto.ingredient7, measure: dto.measure7)
        appendIngredient(name: dto.ingredient8, measure: dto.measure8)
        appendIngredient(name: dto.ingredient9, measure: dto.measure9)
        appendIngredient(name: dto.ingredient10, measure: dto.measure10)
        appendIngredient(name: dto.ingredient11, measure: dto.measure11)
        appendIngredient(name: dto.ingredient12, measure: dto.measure12)
        appendIngredient(name: dto.ingredient13, measure: dto.measure13)
        appendIngredient(name: dto.ingredient14, measure: dto.measure14)
        appendIngredient(name: dto.ingredient15, measure: dto.measure15)
        appendIngredient(name: dto.ingredient16, measure: dto.measure16)
        appendIngredient(name: dto.ingredient17, measure: dto.measure17)
        appendIngredient(name: dto.ingredient18, measure: dto.measure18)
        appendIngredient(name: dto.ingredient19, measure: dto.measure19)
        appendIngredient(name: dto.ingredient20, measure: dto.measure20)

        // Split the keywords into an array for future use.
        let keywords = dto.keywords?.split(separator: ",").map {
            String($0)
        }

        self.init(id: dto.id,
                  name: dto.name,
                  category: dto.category,
                  instructions: dto.instructions,
                  mealThumbnailURL: dto.mealThumbnailURL,
                  keywords: keywords ?? [],
                  ingredients: ingredients)
    }

}
