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
            Color(red: 0.98, green: 0.98, blue: 0.98, opacity: 1)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("ic-location")
                    Text("Zihuatanejo")
                    Image("ic-arrowDown")
                }
                HStack(spacing: 20) {
                    CategoryView(imageName: "ic-phone", text: "Phones")
                    CategoryView(imageName: "ic-computer", text: "Computer")
                    CategoryView(imageName: "ic-heart", text: "Health")
                    CategoryView(imageName: "ic-book", text: "Books")
                }
                
                VStack {
                    HStack {
                        Text("Hot Sales")
                            .font(.largeTitle)
                        Spacer()
                        Text("see more")
                            .foregroundColor(designOrangeColor)
                    }
                    .padding()
                    ZStack {
                        Image("im-iphone")
                            .cornerRadius(10)
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
                    
                    Spacer()
                }
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
