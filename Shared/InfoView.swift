//
//  InfoView.swift
//  Demo
//
//  Created by Valerene Goh Ze Yi on 24/7/21.
//

import SwiftUI

struct InfoView: View {
    let displayText: String
    let icon: Image
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 40)
            .overlay(HStack {
                icon.foregroundColor(.green)
                Text(displayText)
                    .foregroundColor(.orange)
            }).padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(displayText: "aaa", icon: Image(systemName: "phone.fill"))
            .previewLayout(.sizeThatFits)
    }
}
