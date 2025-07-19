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
    @State private var expandedCardId: UUID? = nil
    
    var body: some View {
        NavigationStack {
            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.4))
                    .frame(width: 300, height: 350)
                    .blur(radius: 39.1)
                    .offset(x: 150, y: -500)
                    .zIndex(-1)
                
                
                Circle()
                    .fill(Color.pink.opacity(0.4))
                    .frame(width: 300, height: 350)
                    .blur(radius: 69.1)
                    .offset(x: -150, y: -180)
                
                Circle()
                    .fill(Color.blue.opacity(0.4))
                    .frame(width: 300, height: 350)
                    .blur(radius: 69.1)
                    .offset(x: 150, y: 1)
                    .zIndex(-1)
                
                Circle()
                    .fill(Color.green.opacity(0.4))
                    .frame(width: 300, height: 350)
                    .blur(radius: 69.1)
                    .offset(x: -150, y: 210)
                    .zIndex(-1)
                
                Circle()
                    .fill(Color.purple.opacity(0.4))
                    .frame(width: 300, height: 350)
                    .blur(radius: 69.1)
                    .offset(x: 150, y: 450)
                    .zIndex(-1)
                
                
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
//                        Text("Botol Minum Member’s")
//                            .font(.system(size: 30))
//                            .fontWeight(.bold)
//                            .frame(maxWidth: 180, alignment: .leading)
//                            .padding(.top, 24)
//                            .padding(.bottom, 8)
//                        
                        ForEach(viewModel.members) { member in
                            MemberCardView(
                                name: member.name,
                                fullName: member.fullName,
                                image:member.image,
                                gif: member.gif,
                                color: Color(member.color),
                                colorGallup: member.colorGallup,
                                infoMember: member.infoMember,
                                linkMember: member.linkMember,
                                listAPLS: member.listAPLS,
                                isExpanded: expandedCardId == member.id,
                                onToggle: {
                                    if expandedCardId == member.id {
                                        expandedCardId = nil
                                    } else {
                                        expandedCardId = member.id
                                    }
                                }
                            )
                        }
                        
                    }.padding(.top,10)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                }
            }
            .navigationTitle("Members")
        }.tint(.black)
    }
}


#Preview {
    HomeView()
}
