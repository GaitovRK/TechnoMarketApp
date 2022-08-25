//
//  ContentView.swift
//  TechnoMarketApp
//
//  Created by Rashid Gaitov on 25.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.898, green: 0.898, blue: 0.898, opacity: 1)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("ic-location")
                    Text("Zihuatanejo")
                    Image("ic-arrowDown")
                }
                HStack {
                    CategoryView(imageName: "ic-phone", text: "Phones")
                    CategoryView(imageName: "ic-computer", text: "Computer")
                    CategoryView(imageName: "ic-heart", text: "Health")
                    CategoryView(imageName: "ic-book", text: "Books")
                }
                
                HStack {
                
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CategoryView: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 71, height: 71)
                    .foregroundColor(.white)
                    .shadow(radius: 3)
                
                Image(imageName)
                    .foregroundColor(Color(red: 179, green: 179, blue: 195, opacity: 1))

            }
            Text(text)
                .font(.system(size: 12))
        }
    }
}
