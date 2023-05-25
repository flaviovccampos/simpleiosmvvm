//
//  ShowRecipeView.swift
//  RecipeMVVM
//
//  Created by Flavio Vinicius Campos on 24/05/23.
//

import SwiftUI

struct ShowRecipeView: View {
    
    let theRecipe: String
    let imageName: String
    let recipeURL: String
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theRecipe))
                        .padding()
                }
                
                Spacer()
                
                Link(destination:
                        URL(string: recipeURL)!,
                     label: {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .scaleEffect(0.8)
                        
                        Text("Click image for recipe")
                            .foregroundColor(.orange)
                            .font(.headline)
                            .padding()
                            .background(Capsule().fill(Color.black).opacity(0.6))
                    }
                    
                })
            }
            
        }
    }
}

struct ShowRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        ShowRecipeView(
            theRecipe: """
**Ingredients**
- 1 (15-ounce) can chickpeas or 1 ½ cups (250 grams) cooked chickpeas
- 1/4 cup (60 ml) fresh lemon juice, 1 large lemon
- 1/4 cup (60 ml) well-stirred tahini, see our homemade tahini recipe
- 1 small garlic clove, minced
- 2 tablespoons (30 ml) extra-virgin olive oil, plus more for serving
- 1/2 teaspoon ground cumin
- Salt to taste
- 2 to 3 tablespoons (30 to 45 ml) water or aquafaba
- Dash ground paprika or sumac
""",
            imageName: "IMGhummus",
            recipeURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/")
    }
}
