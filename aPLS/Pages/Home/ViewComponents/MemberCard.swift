//
//  MemberCard.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import SwiftUI

struct MemberCard: View {
    var name: String
    var fullName: String
    var image: String
    var color: Color
    var colorGallup: String
    var infoMember : InfoMember
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
                        HStack(){
                            Image(systemName: isExpanded ? DesignIcons.x : DesignIcons.expandIcon)
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                                    .padding(8)
                                    .background(Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                    .font(.system(size: 20))
                        }
                        .frame(maxWidth:.infinity, alignment: .trailing)
                        .padding()
//                        .background(.blue) ini mar
                        
                        
                        VStack(alignment:.center){
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                
                        }
                        .frame(width:230, height: 230)
                        .background((Color.white.opacity(0.4)))
                        .clipShape(.circle)
                        .zIndex(-1)
                    }
                    
                    
//                    konten bawah
                    VStack (alignment: .leading, spacing: 8){
                        if isExpanded {
                            NavigationLink(
                                destination: DetailViewWrapper()
                                    .navigationTitle("aPLS")
                                    .navigationBarTitleDisplayMode(.inline)
                            ){
                                
                                VStack(alignment:.leading, spacing:10){
                                    VStack (alignment: .leading){
                                        Text(fullName)
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size: 26, weight: .semibold))
                                            .foregroundColor(.black)
                                           
                                    }                                .frame(width: 245, alignment: .leading)
                                        

                                    
                                        HStack(spacing:10){
                                            Text("Check the aPLS")
                                                .font(.system(size: 17))
                                                .fontWeight(.medium)
                                                .foregroundStyle(.white)
                                            
                                            Image(systemName:"arrow.right")
                                                .foregroundColor(.white)
                                              
                                        }.padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
                                            .background(Color.black)
                                            .cornerRadius(12)
                                    
                                }
                                .frame(maxWidth:.infinity,alignment:.leading)
                                
                               
                                
                                VStack {
                                    Spacer()
                                    
                                    Button(action:{}){
                                        Image(DesignImages.instagram)
                                            .frame(width: 24, height: 24)
                                            .foregroundColor(.black)
                                            .padding(8)
                                            .background(Color.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                            .font(.system(size: 20))
                                    }
                                    
                                    Button(action: {}){
                                        Image(DesignImages.linkedIn)
                                            .frame(width: 24, height: 24)
                                            .foregroundColor(.black)
                                            .padding(8)
                                            .background(Color.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                            .font(.system(size: 20))
                                    }
                                }
                            }
                            
                        }
                        else{
                            
                            HStack(spacing:10){
                                
                                VStack(alignment:.center){
                                    Image(image)
                                        .resizable()
                                        .scaledToFill()
                                        .padding()
                                        .frame(width: 80)
                                }
                                .frame(width:90, height: 90)
                                .background((Color.white.opacity(0.4)))
                                .clipShape(.circle)
                                
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(name)
                                        .font(.system(size: 25, weight: .semibold))
                                        .foregroundColor(.black)
                                    
                                    VStack(alignment: .leading, spacing: 4){
                                        HStack(spacing: 4) {
                                            Text(infoMember.age)
                                            Text("|")
                                            Text(infoMember.role)
                                        }
                                        
                                        HStack{
                                            Text("1st Gallup :")
                                                .font(.system(size: 13, weight:.semibold))
                                                .foregroundColor(Color(colorGallup))
                                            Text(infoMember.gallup)
                                        }
                                        
                                    }
                                    .font(.system(size: 13))
                                    .foregroundColor(.black.opacity(0.8))
                                    
                                }
                                Spacer()
                                Image(systemName: isExpanded ? DesignIcons.x : DesignIcons.expandIcon)
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(.black)
                                        .padding(8)
                                        .background(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                        .font(.system(size: 20))
                            }
                            .padding()
                        }
                        
                        
                        
                    }.frame(maxWidth: .infinity ,alignment: .leading)
//                        .background(.red) ini mar
                    
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -24))
                    .frame(maxHeight: .infinity, alignment: isExpanded ? .bottom : .center)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
           
                
               
                
                
                
            }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 24))
                .frame(height: isExpanded ? 501 : 114, alignment: isExpanded ? .bottom : .center)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(color)
                .cornerRadius(isExpanded ? 16 : 12)
        }
    }
}
#Preview {
    HomeView()
}
