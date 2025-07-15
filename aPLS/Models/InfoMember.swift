//
//  Member.swift
//  aPLS
//
//  Created by Muhamad Alif Anwar on 14/07/25.
//

import SwiftUI

class InfoMember: Identifiable {
    let id = UUID()
    var age: String
    var role: String
    var gallup: String
    
    init(age: String, role: String, gallup: String) {
        self.age = age
        self.role = role
        self.gallup = gallup
    }
}
