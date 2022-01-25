//
//  ContentView.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var quotesAPI: QuotesAPI
    
    var body: some View {
        
        TabView {
            CardsContentView(items: quotesAPI.items)
        }
        .onAppear {
            quotesAPI.fetchData() //fetch data when tab view appears on screen
        }
        .frame(width: UIScreen.main.bounds.width,height: 600)
        .tabViewStyle(PageTabViewStyle()) //make a paged effect when swiping
              
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(QuotesAPI())
    }
}

