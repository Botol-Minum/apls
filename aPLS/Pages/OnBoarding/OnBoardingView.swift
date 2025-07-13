//
//  OnBoardingView.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 13/07/25.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false

    var body: some View {
        GeometryReader{ geomtry in
            
            VStack {
                ZStack (alignment: .topLeading){
                    MemojiView(
                        width: 124,
                        height: 124,
                        color: Color(DesignColors.memojiRed)
                    ).offset(x: -40,y: -120)
                        .blur(radius: 4)
                    
                    MemojiView(
                        width: 187,
                        height: 187,
                        color: Color(DesignColors.memojiGreen))
                    .rotationEffect(.degrees(-17))
                        .offset(x: geomtry.size.width - 110,y:-120 )
                        .blur(radius: 4)
                    
                    
                    MemojiView(
                        width: 68,
                        height: 68,
                        color: Color(DesignColors.memojiBlue))
                    .rotationEffect(.degrees(14))
                    .offset(x: geomtry.size.width * 0.1, y:20)
                    .blur(radius: 2)
                  
                    
                    MemojiView(
                        width: 40,
                        height: 40,
                        color: Color(DesignColors.memojiPurple))
                    .rotationEffect(.degrees(-17))
                    .offset(x: geomtry.size.width * 0.5, y:geomtry.size.height / 7)
                    .blur(radius: 2)
                    
                    MemojiView(
                        width: 51,
                        height: 51,
                        color: Color(DesignColors.memojiRed))
                    .offset(x: geomtry.size.width * 0.35, y:geomtry.size.height / 5)
                    .blur(radius: 2)
                    
                    MemojiView(
                        width: 33,
                        height: 33,
                        color: Color(DesignColors.yellow))
                    .offset(x: geomtry.size.width * 0.54, y:geomtry.size.height / 3.7)
                    .blur(radius: 2)
                    
               
                    VStack(spacing: 24){
                        MemojiView(width: 110,height: 110,color: Color(DesignColors.memojiYellow))
                        
                        HStack {
                            MemojiView(
                                width: 117,
                                height: 117,
                                color: Color(DesignColors.memojiPurple)
                            ).rotationEffect(.degrees(-17))
                            
                            Spacer()
                            
                            MemojiView(
                                width: 124,
                                height: 124,
                                color: Color(DesignColors.memojiRed))
                            
                        }.padding(.horizontal, 8)
                        
                        HStack {
                            Spacer()
                            
                            MemojiView(
                                width: 120,
                                height: 120,
                                color: Color(DesignColors.memojiGreen)
                            ).rotationEffect(.degrees(-17))
                            
                            Spacer()
                            
                            MemojiView(
                                width: 95,
                                height: 95,
                                color: Color(DesignColors.memojiBlue))
                            
                            Spacer()
                        }
                    }
                }.frame(maxWidth: .infinity)
                    .frame(height: geomtry.size.height * 0.55,alignment: .bottom)
                    .background(
                        LinearGradient(
                            colors: [.white,Color(DesignColors.onBoarding)],
                            startPoint: .bottom, endPoint: .top)
                    )
                Spacer()

                VStack(spacing: 36){
                    Text("Academy Personal Learning Statement")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text("A personal statement about how to consciously learn and act in the midst of advancing AI technology.")
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 300)
                        
                }.padding()
                
                Spacer()
                
                Button(action: {
                    hasCompletedOnboarding = true
                }){
                    VStack {
                        Text("Get Started")
                            .foregroundStyle(.white)
                    }
                        .frame(height: 40)
                        .frame(maxWidth: 300)
                        .padding(.vertical,4)
                        .background(Color(DesignColors.blackButton))
                        .cornerRadius(40)
                }
                Spacer()
            }
        }.ignoresSafeArea()
    }
}

#Preview{
    OnBoardingView()
}

