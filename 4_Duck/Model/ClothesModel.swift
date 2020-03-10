//
//  ClothesModel.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

struct Clothes: Identifiable{
    let id = UUID()
    let name: String
    let photoName: String
    let temperature: Celsius
    
}
