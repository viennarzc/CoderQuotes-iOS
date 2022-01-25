//
//  CardsContentView.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI



struct CardsContentView: View {
    var quotesAPI: QuotesAPI
    
    var body: some View {
        ForEach(quotesAPI.items) { quote in
            VStack(alignment: .trailing) {
                Text(quote.author)
                    .font(.caption)
                    .fontWeight(.light)
                    .padding(.trailing, 8)
                
                CardView(viewModel: CardViewModel(model: quote))
            }
            .padding()
        }
    }
}


struct CardsContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardsContentView(quotesAPI: QuotesAPI())
            .previewLayout(.sizeThatFits)
    }
}
