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
    var linkMember : LinkMember
    
    
    var isExpanded: Bool
    var onToggle: () -> Void
    
    var body: some View {
        ZStack {
            VStack(alignment: .center){
                VStack (){
                    //                    konten bawah
                    VStack (alignment: .center, spacing: 8){
                        if isExpanded {
                            VStack {
                                VStack{
                                    GIFView(gifName: "abdan2")
                                }
                                .frame(width: 344)
                                .frame(height: 344)
                                .padding(.horizontal,16)
                                .background((Color.white.opacity(0.4)))
                                .clipShape(.circle)
                                
                                HStack(alignment: .bottom){
                                    VStack (alignment: .leading){
                                        Text(fullName)
                                            .multilineTextAlignment(.leading)
                                            .font(.system(size: 26, weight: .semibold))
                                            .foregroundColor(.black)
                                        
                                        NavigationLink(
                                            destination: DetailViewWrapper()
                                                .navigationTitle("aPLS")
                                                .navigationBarTitleDisplayMode(.inline)
                                        )  {
                                            
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
                                        
                                    } .frame(maxWidth: 245, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    VStack {
                                        Button(action:{openLink(linkMember.instagram)}){
                                            Image(DesignImages.instagram)
                                                .frame(width: 24, height: 24)
                                                .foregroundColor(.black)
                                                .padding(8)
                                                .background(Color.white)
                                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                                .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                                .font(.system(size: 20))
                                        }
                                        
                                        Button(action: {openLink(linkMember.linkedin)}){
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
                                }.padding(.horizontal, 20)
                                
                            }.padding(.top, 16)
                                .padding(.bottom, 36)
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
                                                .font(.caption)
                                                .fontWeight(.regular)
                                                .foregroundColor(Color(colorGallup))
                                            Text(infoMember.gallup)
                                        }
                                        
                                    }
                                    .font(.system(size: 13))
                                    .foregroundColor(.black.opacity(0.8))
                                }
                            }
                            .padding(.vertical, 14)
                            .padding(.horizontal, 12)
                        }
                    }
                    .frame(maxWidth: .infinity ,alignment: .leading)
                }
                .frame(maxHeight: .infinity, alignment: isExpanded ? .bottom : .center)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(color)
            .cornerRadius(16)
            
            // Button Expand
            VStack{
                Button(action: {
                    withAnimation(.bouncy(duration: 0.4)){
                        onToggle()
                    }
                }){
                    Image(systemName: isExpanded ? DesignIcons.x : DesignIcons.expandIcon)
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                        .padding(8)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                        .font(.system(size: 20))
                }
            }.frame(maxWidth: .infinity,alignment: isExpanded ? .topTrailing : .trailing)
                .frame(maxHeight: .infinity,
                       alignment:  isExpanded ? .topTrailing : .trailing
                )
                .padding(.horizontal, 12)
                .padding(.vertical, isExpanded ? 16 : 8)
            
        }
        
        
    }
    func openLink(_ urlString: String) {
        guard let url = URL(string: urlString),
              UIApplication.shared.canOpenURL(url) else {
            print("Invalid or unsupported URL: \(urlString)")
            return
        }
        UIApplication.shared.open(url)
    }
}
#Preview {
    HomeView()
}
