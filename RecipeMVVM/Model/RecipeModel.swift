//
//  RecipeModel.swift
//  RecipeMVVM
//
//  Created by Flavio Vinicius Campos on 24/05/23.
//

import Foundation

struct RecipeModel: Identifiable{
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
}
