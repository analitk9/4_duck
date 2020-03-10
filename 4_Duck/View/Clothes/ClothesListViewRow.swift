//
//  ClothesListViewRow.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI
import UIKit

struct ClothesListViewRow: View {
    var clothes: Clothes
    
    
    var body: some View {
        VStack{
             Text("\(clothes.name)")
        HStack{
            Image("\(clothes.photoName)")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            VStack{
                Text("для температуры")
                Text("\(Int(clothes.temperature)) ℃")
            }
        }
        }
    }
}
struct ClothesListViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ClothesListViewRow(clothes:  MockClothesDataManager.shared.fetchClotherList()[1])
    }
}
