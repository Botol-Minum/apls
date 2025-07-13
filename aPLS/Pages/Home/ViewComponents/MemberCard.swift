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
                        Text(name)
                            .font(.title2)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity,alignment: .leading)
                        
                        if isExpanded {
                            NavigationLink(
                                destination: DetailViewWrapper()
                                    .navigationTitle("aPLS")
                                    .navigationBarTitleDisplayMode(.inline)
                            ){
                                VStack (alignment: .leading){
                                    Text("Check the aPLS")
                                        .font(.body)
                                        .fontWeight(.medium)
                                        .foregroundStyle(.black)
                                }.padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                                    .background(Color.white)
                                    .cornerRadius(12)
                            }
                        }
                        
                    }.frame(maxWidth: .infinity,alignment: .leading)
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -24))
                    .frame(maxHeight: .infinity, alignment: isExpanded ? .bottom : .center)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack (alignment: .trailing){
                    Image(systemName: DesignIcons.chevronRight)
                        .foregroundStyle(.white)
                    
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
                .frame(height: isExpanded ? 360 : 80, alignment: isExpanded ? .bottom : .center)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(color)
                .cornerRadius(isExpanded ? 16 : 12)
        }
    }
}
#Preview {
    HomeView()
}
