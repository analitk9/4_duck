//
//  ClothesListView.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI

struct ClothesListView: View {
     @ObservedObject var viewModel = ClothesListViewModel()
     @State  var selectWeather: Weather?
        
    var body: some View {
        List(viewModel.clothes){ clother in
            VStack {
            ClothesListViewRow(clothes: clother)
            }
            
            }.navigationBarTitle(Text(selectWeather?.weatherName ?? ""), displayMode: .inline)
        
        
        .onAppear {
            if self.selectWeather != nil {
                self.viewModel.fetchClothes(for: self.selectWeather!.temperature)
            }
        }
    
    }
}

struct ClothesListView_Previews: PreviewProvider {
    static var previews: some View {
    var view = ClothesListView()
        view.viewModel = ClothesListViewModel(dataManager: MockClothesDataManager())
        return view
    }
}
