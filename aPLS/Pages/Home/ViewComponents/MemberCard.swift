//
//  MemberCard.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import SwiftUI

struct MemberCard: View {
    var name: String
    var color: Color
    
    var body: some View {
        HStack(alignment: .center){
            Text(name)
                .font(.title2)
                .foregroundStyle(.white)
            Spacer()
            Image(systemName: DesignIcons.chevronRight)
                .foregroundStyle(.white)
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 24))
            .frame(height: 80, alignment: .center)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(color)
            .cornerRadius(8)
    }
}

#Preview {
    HomeView()
}
