//
//  ContentView.swift
//  Shared
//
//  Created by Valerene Goh Ze Yi on 24/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 150, height: 150, alignment: .center)
                    .overlay(Circle()
                                .stroke(Color.white, lineWidth: 5))
                Text("Valerene Goh")
                    .font(Font.custom("Lobster-Regular", size: 30))
                    .bold()
                    .foregroundColor(Color.white)
                Text("software consultant")
                    .foregroundColor(.white)
                    .font(Font.system(size: 20))
                InfoView(displayText: "+65 9876 5432",
                         icon: Image(systemName: "phone.fill"))
                InfoView(displayText: "valerene.goh@thoughtworks.com",
                         icon: Image(systemName: "envelope.fill"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
