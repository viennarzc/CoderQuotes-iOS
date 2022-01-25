//
//  CoderQuotesApp.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI

@main
struct CoderQuotesApp: App {
    var quotesAPI = QuotesAPI()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(QuotesAPI())
        }
    }
}
