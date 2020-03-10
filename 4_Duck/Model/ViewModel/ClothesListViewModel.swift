//
//  ClothesListViewModel.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

protocol ClothesListViewProtocol {
    var clothes: [Clothes] { get }
    func fetchClothes(for temp: Celsius)
    func fetchClothes()
}

final class ClothesListViewModel: ObservableObject {
    
    @Published var clothes = [Clothes]()
    
    var dataManager: ClothesDataManagerProtocol
    
    init(dataManager: ClothesDataManagerProtocol =  ClothesDataManager.shared) {
        self.dataManager = dataManager
        fetchClothes()
    }
}

extension ClothesListViewModel: ClothesListViewProtocol {

    
    func fetchClothes(for temp: Celsius) {
        clothes = dataManager.fetchClotherList(for: temp)
    }
    
    func fetchClothes() {
        clothes = dataManager.fetchClotherList()
    }
    
    
}
