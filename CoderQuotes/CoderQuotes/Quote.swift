//
//  Quote.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI

/// Model
struct Quote: Identifiable, Decodable {
    let id: String
    let author: String
    let en: String
}


