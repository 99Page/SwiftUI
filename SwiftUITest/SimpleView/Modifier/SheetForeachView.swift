//
//  SheetForeachView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/17.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    var value: Int
}

struct SheetForeachView: View {
    
    @State private var isPresentingRecipe: Recipe? = nil
    @State private var recipes = [Recipe(value: 235), Recipe(value: 28),
                                  Recipe(value: 12), Recipe(value: 83)]
    
    var body: some View {
        VStack {
            ForEach(recipes) { recipe in
                Button {
                    isPresentingRecipe = recipe
                } label: {
                    Text("\(recipe.value) 시트")
                }
            }
            .sheet(item: $isPresentingRecipe) { recipe in
                SheetDetailView(recipe: recipe)
        }
    }
}

struct SheetDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        Text("\(recipe.value)")
    }
}
struct SheetForeachView_Previews: PreviewProvider {
    static var previews: some View {
        SheetForeachView()
    }
}
