//
//  RecipeDetailDTOTests.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 5/29/24.
//

import XCTest
@testable import MealDBPlayground

final class RecipeDetailDTOTests : XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let id = "1"
        let name = "Mac and Cheese"
        let category = "Lunch"
        let instructions = "These are the instructions"

        let detailDTO = RecipeDetailDTO(id: id,
                                        name: name,
                                        category: category,
                                        instructions: instructions)
        let recipeDetail = RecipeDetail(fromDTO: detailDTO)
        XCTAssertEqual(recipeDetail.id, id)
        XCTAssertEqual(recipeDetail.name, name)
        XCTAssertEqual(recipeDetail.category, category)
        XCTAssertEqual(recipeDetail.instructions, instructions)
    }
}
