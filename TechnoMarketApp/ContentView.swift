//
//  ContentView.swift
//  TechnoMarketApp
//
//  Created by Rashid Gaitov on 25.08.2022.
//

import SwiftUI

let designOrangeColor = Color( red: 1, green: 110/255, blue: 78/255, opacity: 1)

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.898, green: 0.898, blue: 0.898, opacity: 1)
                .ignoresSafeArea()
            VStack {
                LocationView()
                CategoriesView()
                
                SearchBarView()

                
//                HStack {
//                    Text("Hot Sales")
//                        .font(.largeTitle)
//                    Spacer()
//                    Text("see more")
//                        .foregroundColor(designOrangeColor)
//                }
//                .padding()
//                BannerView()
//                Spacer()
                
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
    var isActive : Bool
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 71, height: 71)
                    .foregroundColor(designOrangeColor)
                    .shadow(radius: 3)
                
                Image(imageName)
                    .foregroundColor(Color(red: 179, green: 179, blue: 195, opacity: 1))

            }
            Text(text)
                .font(.system(size: 12))
                .foregroundColor(isActive ? designOrangeColor : .black)
        }
    }
}

struct BannerView: View {
    var body: some View {
        ZStack {
            Image("im-iphone")
                .resizable()
                .cornerRadius(10)
                .frame(width: 300, height: 190, alignment: .trailing)
            
            VStack(alignment: .leading) {
                Circle()
                    .foregroundColor(designOrangeColor)
                    .frame(width: 27, height: 27)
                Text("Iphone 12")
                    .font(.system(size: 25))
                    .fontWeight(.heavy)
                Text("Súper. Mega. Rápido.")
                Button {
                    
                } label: {
                    Text("Buy now!")
                        .foregroundColor(.black)
                        .font(.system(size: 11))
                        .fontWeight(.bold)
                }
                .frame(width: 98, height: 23)
                .background(Color.white)
                .cornerRadius(5)
                
            }
            .foregroundColor(.white)
        }
    }
}

struct LocationView: View {
    var body: some View {
        HStack {
            Image("ic-location")
            Text("Zihuatanejo")
            Button {
                
            } label: {
                Image("ic-arrowDown")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
            }
        }
    }
}

struct CategoriesView: View {
    private let categories = ["Phones", "Computer", "Health", "Books", "Others"]
    private let icons = ["ic-phone", "ic-computer", "ic-heartBeat"]
    @State var selectedIndex = 0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(0 ..< categories.count) { i in
                    CategoryView(imageName: icons[i], text: categories[i], isActive: i == selectedIndex)
                        .onTapGesture {
                            selectedIndex = i
                        }
                }
                
            }
            .padding(.horizontal)

        }
    }
}

struct SearchBarView: View {
    @State var search: String = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search gadgets", text: $search)
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.trailing)
            
            Button {
                
            } label: {
                Image("ic-book")
                    .padding()
                    .background(designOrangeColor)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
    }
}
