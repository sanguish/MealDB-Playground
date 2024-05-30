//
//  ViewModel.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 5/17/24.
//

import Foundation

@Observable
class ViewModel {
    var recipe: RecipeDetail? = nil

    init() {
        let filename = Bundle.main.url(forResource: "RecipeDetail", 
                                       withExtension: "json")
        if let filename {
            if let rawJSON = try? Data(contentsOf: filename) {
                let recipesDTO = try? JSONDecoder().decode(RecipesDTO.self,
                                                           from: rawJSON)
                self.recipe = recipesDTO?.recipe
            }
        }
    }
}
