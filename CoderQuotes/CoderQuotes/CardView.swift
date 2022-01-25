//
//  CardView.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI

struct CardView: View {
    var viewModel: CardViewModel
    
    init(viewModel: CardViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                colors: viewModel.bgColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            
            
            Text(viewModel.quoteText)
                .padding()
                .foregroundColor(.white)
                .font(.title)
                
            
        }
        .clipShape(
            RoundedRectangle(
                cornerRadius: 10.0,
                style: .continuous))
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            viewModel: CardViewModel(model: Quote(id: "", author: "Author", en: "Some quotes")))
            .previewLayout(.sizeThatFits)
    }
}
