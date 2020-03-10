//
//  MockClothesDataManager.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation


class MockClothesDataManager {
    static let shared: ClothesDataManagerProtocol = MockClothesDataManager()
    private  var clothes = [Clothes]()
    
    init() {
        clothes = [
            Clothes(name: "брюки 10 гр", photoName: "trousers", temperature: 10),
            Clothes(name: "брюки 10-1 гр", photoName: "trousers", temperature: 10),
            Clothes(name: "брюки 10-2 гр", photoName: "trousers", temperature: 10),
            Clothes(name: "брюки 10-3 гр", photoName: "trousers", temperature: 10),
            Clothes(name: "брюки 10-4 гр", photoName: "trousers", temperature: 10),
            Clothes(name: "Рубашка номер 20 гр", photoName: "shirt", temperature: 20),
            Clothes(name: "Рубашка номер 20-1 гр", photoName: "shirt", temperature: 20),
            Clothes(name: "Рубашка номер 20-2 гр", photoName: "shirt", temperature: 20)
        ]
    }
    
    
}

extension MockClothesDataManager: ClothesDataManagerProtocol {
   func fetchClotherList(for temp: Celsius) -> [Clothes] {
           clothes.filter {
               $0.temperature == temp
           }
       }
       
       func fetchClotherList() -> [Clothes] {
           clothes
       }
     
    
    
}
