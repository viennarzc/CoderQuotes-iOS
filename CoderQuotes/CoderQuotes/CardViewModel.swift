//
//  CardViewModel.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import Foundation

struct CardViewModel {
    let id: String
    let author: String
    let quoteText: String
    let bgColors = [
        Constants.colors.randomElement()!,
        Constants.colors.randomElement()!]
    
    
    init(model: Quote) {
        self.id = model.id
        self.author = model.author
        self.quoteText = model.en
    }
    
}
