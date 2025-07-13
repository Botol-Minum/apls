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
    @State var isExpanded: Bool = false
    
    var body: some View {
        
        Button(action: {
            withAnimation(.easeInOut(duration: 0.4)){
                isExpanded.toggle()
            }
        }){
            HStack(alignment: .center){
                VStack (){
                    if isExpanded {
                        Spacer()
                        Image(DesignImages.mario)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, -32)
                    }
                    
                    VStack (alignment: .leading, spacing: 8){
                        
                        
                        
                        if isExpanded {
                            
                            Text(name)
                                .font(.title2)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            
                            VStack (alignment: .leading){
                                Text("Check the aPLS")
                                    .font(.body)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.black)
                            }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                                .background(Color.white)
                                .cornerRadius(12)
                        }
                        else{
                            HStack(spacing:20){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 200, style: .continuous)
                                        .fill(Color.white.opacity(0.4))
                                        .frame(width:100, height: 100)
                                    
                                    Image(DesignImages.mario)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60)
                                    
                                }
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(name)
                                        .font(.system(size: 25, weight: .semibold))
                                        .foregroundColor(.black)
                                    
                                    HStack(spacing: 4) {
                                        Text("20th")
                                        Text("|")
                                        Text("single")
                                        Text("|")
                                        Text("sleeper")
                                    }
                                    .font(.system(size: 14))
                                    .foregroundColor(.black.opacity(0.8))
                                }
                              
                            }
                        }
                        
                    }.frame(maxWidth: .infinity ,alignment: .leading)
                        
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -24))
                    .frame(maxHeight: .infinity, alignment: isExpanded ? .bottom : .center)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack (alignment: .trailing){
                    Image(systemName: "arrow.up.left.and.arrow.down.right")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 24, height: 24)
                           .foregroundColor(.black)
                           .padding(13)
                           .background(Color.white)
                           .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                           .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    
                    if isExpanded {
                        VStack {
                            Spacer()
                            
                            Button(action:{}){
                                Image(DesignImages.portfolio)
                                    .resizable()
                                    .frame(width: 50,height: 50)
                            }
                            
                            Button(action: {}){
                                Image(DesignImages.linkedIn)
                                    .resizable()
                                    .frame(width: 50,height: 50)
                            }
                        }
                    }
                    
                }.padding(.vertical, 16)
                    .frame(maxHeight: .infinity, alignment: isExpanded ? .top : .center)
                
            }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 24))
                .frame(height: isExpanded ? 360 : 120, alignment: isExpanded ? .bottom : .center)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(color)
                .cornerRadius(isExpanded ? 16 : 12)
        }
    }
}
#Preview {
    HomeView()
}
