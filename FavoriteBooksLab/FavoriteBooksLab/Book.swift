//
//  Book.swift
//  FavoriteBooksLab
//
//  Created by Parker Rushton on 6/1/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import Foundation

struct Book: Identifiable, Equatable {
    
    let id: String
    var author: String
    var genre: String
    var numberOfPages: Int
    var title: String
    
}

func ==(lhs: Book, rhs: Book) -> Bool {
    return lhs.id == rhs.id
}
