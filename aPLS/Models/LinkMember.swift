//
//  LinkMember.swift
//  aPLS
//
//  Created by Muhamad Alif Anwar on 15/07/25.
//

import Foundation

class LinkMember: Identifiable {
    let id = UUID()
    var instagram: String
    var linkedin: String
    
    init(instagram: String, linkedin: String) {
        self.instagram = instagram
        self.linkedin = linkedin
        
    }
}
