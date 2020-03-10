//
//  AboutView.swift
//  4_Duck
//
//  Created by Denis Evdokimov on 10.03.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import SwiftUI


struct AboutView: View {
    
    @State var aboutShowed: Bool = false
    
    var body: some View {
        VStack {
            Text("About App")
                .simultaneousGesture(TapGesture().onEnded {
                    self.aboutShowed.toggle()
                })
        }
        .sheet(isPresented: $aboutShowed) {
            AboutViewModal()
        }
    }
}

struct AboutViewModal: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                Text("Close")
            }
            Spacer()
            Image(systemName: "tortoise")
                .foregroundColor(.red)
                .font(.largeTitle)
            Spacer()
        }
    }
}
