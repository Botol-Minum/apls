//
//  Memoji.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 13/07/25.
//

import SwiftUI

struct MemojiView: View {
    var width: CGFloat = 110
    var height: CGFloat = 110
    var blurRadius: CGFloat = 0
    var color: Color = .white
    
    var body: some View {
        VStack {
            Image(DesignImages.abdan)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
        }.padding(width < 80 ? 4 : 12)
            .background(color)
            .frame(width: width, height: height)
            .clipShape(.circle)
            .blur(radius: blurRadius)
    }
}
