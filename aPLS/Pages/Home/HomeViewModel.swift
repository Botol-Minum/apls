//
//  HomeViewModel.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 12/07/25.
//

import Foundation

final class HomeViewModel: ObservableObject {
    //    @Published var isExpanded: Int =
    
    let members = [
        Member(name: "Abdan",fullName: "Abdan Fauzan Nurtsani",image:DesignImages.abdan, color: DesignColors.yellow,colorGallup: DesignColorGallups.yellow, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical")),
        
        Member(name: "Alif",fullName: "Muhamad Alif\nAnwar",
               image:DesignImages.mario ,
               color: DesignColors.red,
               colorGallup: DesignColorGallups.red ,
               infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical")
              ),
        
        Member(name: "Filza",fullName: "Filza Rizki  Ramadhan",image:DesignImages.abdan, color: DesignColors.blue,colorGallup: DesignColorGallups.blue, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical")),
        Member(name: "Mario",fullName: "Mario Pandapotan Simarmata",image:DesignImages.mario, color: DesignColors.green,colorGallup: DesignColorGallups.green, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical")),
        Member(name: "Yudha",fullName: "Yudha\nPratama",image:DesignImages.abdan ,color: DesignColors.purple,colorGallup: DesignColorGallups.purple, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical")),
    ]
}
