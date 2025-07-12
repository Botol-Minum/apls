//
//  MembersView.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import SwiftUI
import Foundation

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack (alignment: .leading,spacing: 12) {
                    
                    ForEach(viewModel.members) {  member in
                        MemberCard(
                            name: member.name,
                            color: Color(member.color)
                        )
                    }
                    
                }.padding(EdgeInsets(
                    top: 0,
                    leading: 16,
                    bottom: 16,
                    trailing: 16)
                )
            }.navigationTitle("Members")
        }
    }
}

#Preview {
    HomeView()
}

