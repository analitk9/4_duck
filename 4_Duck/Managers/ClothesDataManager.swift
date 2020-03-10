//
//  ClothesDataManager.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

protocol ClothesDataManagerProtocol {
    func fetchClotherList() -> [Clothes]
    func fetchClotherList(for temp: Celsius) -> [Clothes]
}


class ClothesDataManager {
    
    static let shared: ClothesDataManagerProtocol = ClothesDataManager()
    
    private var clothes = [Clothes]()
    private init() {}
    
}

extension ClothesDataManager: ClothesDataManagerProtocol {
    func fetchClotherList(for temp: Celsius) -> [Clothes] {
       var result = [Clothes]()
        for clo in clothes {
            if clo.temperature == temp {
                result.append(clo)
            }
        }
        return result
    }
    
    func fetchClotherList() -> [Clothes] {
        clothes
    }
  
    
    
}
