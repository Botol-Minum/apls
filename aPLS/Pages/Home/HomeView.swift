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
        NavigationStack {
            ZStack {
//               ok ini aku masih bingung wkwkwkwk untuk bulat bulatnya
// rencana mo ku tarok sini bulet buletnya
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("Botol Minum Member’s")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 24)
                            .padding(.bottom, 8)
                        
                        ForEach(viewModel.members) { member in
                            MemberCard(
                                name: member.name,
                                color: Color(member.color)
                            )
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    HomeView()
}

