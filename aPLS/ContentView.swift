//
//  ContentView.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false
    
    var body: some View {
        
        if hasCompletedOnboarding {
            HomeView().preferredColorScheme(.light)
        } else {
            OnBoardingView().preferredColorScheme(.light)
        }
    }
}

#Preview {
    ContentView()
}
