//
//  Member.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import SwiftUI

class Member: Identifiable {
    let id = UUID() 
    var name: String
    var fullName: String
    var image: String
    var color: String
    var colorGallup: String
    var infoMember: InfoMember
    var linkMember: LinkMember
    
    init(name: String, fullName:String , image: String, color: String, colorGallup:String ,infoMember : InfoMember, linkMember: LinkMember) {
        self.name = name
        self.fullName = fullName
        self.image = image
        self.color = color
        self.colorGallup = colorGallup
        self.infoMember = infoMember
        self.linkMember = linkMember
    }   
}
