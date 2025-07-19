//
//  APLS.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 18/07/25.
//

import SwiftUI

class APLS: Identifiable {
    let id = UUID()
    var keywords: String
    var statement: String
    
    init(keywords: String, statement: String) {
        self.keywords = keywords
        self.statement = statement
    }
}
