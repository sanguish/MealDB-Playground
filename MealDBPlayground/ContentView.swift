//
//  ContentView.swift
//  MealDBPlayground
//
//  Created by Scott Anguish on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ViewModel()

    var recipe: RecipeDetail {
        viewModel.recipe!
    }

    var body: some View {
        VStack {
            if viewModel.recipe == nil {
                ContentUnavailableView {
                    Label("Oops", systemImage: "exclamationmark.triangle")
                } description: {
                    Text("The JSON didn't load.")
                }
            } else {
                if let thumbnail = recipe.mealThumbnailURL {
                    AsyncImage(url: thumbnail) { image in

                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)

                    } placeholder: {
                        ProgressView()
                    }
                    .clipShape(.rect(cornerRadius: 16.0))
                    .clipped()
                    .shadow(radius: 8)
                    .frame(width: 400, height: 400)
                    .padding(10)
                }
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontDesign(.rounded)
            }

        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
