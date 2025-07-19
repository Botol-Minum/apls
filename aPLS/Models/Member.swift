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
    var gif: String
    var color: String
    var colorGallup: String
    var infoMember: InfoMember
    var linkMember: LinkMember
    var listAPLS: [APLS]
    
    init(name: String, fullName:String , image: String, gif: String, color: String, colorGallup:String ,infoMember : InfoMember, linkMember: LinkMember, listAPLS: [APLS]) {
        self.name = name
        self.fullName = fullName
        self.image = image
        self.gif = gif
        self.color = color
        self.colorGallup = colorGallup
        self.infoMember = infoMember
        self.linkMember = linkMember
        self.listAPLS = listAPLS
    }
}
