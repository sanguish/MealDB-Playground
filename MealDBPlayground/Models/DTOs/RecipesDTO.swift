//
//  RecipesDTO.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 4/25/24.
//

import Foundation

struct RecipesDTO: Decodable {
    private let meals: [RecipeDetailDTO]

    enum CodingKeys: String, CodingKey {
        case meals
    }
}

extension RecipesDTO {

    var recipe: RecipeDetail? {
        let recipeInstructionsDTO = meals.first
        if let recipeInstructionsDTO {
            return RecipeDetail(fromDTO: recipeInstructionsDTO)
        }
        return nil
    }

}
