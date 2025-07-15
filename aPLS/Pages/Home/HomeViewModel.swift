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
        Member(name: "Abdan",fullName: "Abdan Fauzan Nurtsani",image:DesignImages.abdan, color: DesignColors.yellow,colorGallup: DesignColorGallups.yellow, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical"),linkMember: LinkMember(instagram: "https://www.instagram.com/abdanfzn/", linkedin: "https://www.linkedin.com/in/abdan-fauzan/")),
        
        Member(name: "Alif",fullName: "Muhamad Alif\nAnwar",
               image:DesignImages.abdan ,
               color: DesignColors.red,
               colorGallup: DesignColorGallups.red ,
               infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical"),
               linkMember: LinkMember(instagram: "https://www.instagram.com/a.lifanwar/", linkedin: "https://www.linkedin.com/in/muhamad-alif-anwar/")
              ),
        
        Member(name: "Filza",fullName: "Filza Rizki  Ramadhan",image:DesignImages.abdan, color: DesignColors.blue,colorGallup: DesignColorGallups.blue, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical"),linkMember: LinkMember(instagram: "https://www.instagram.com/filzarr/", linkedin: "https://www.linkedin.com/in/filza-rizki-ramadhan-17424b1b3/")),
        
        Member(name: "Mario",fullName: "Mario Pandapotan Simarmata",image:DesignImages.mario, color: DesignColors.green,colorGallup: DesignColorGallups.green, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical"),linkMember: LinkMember(instagram: "https://www.instagram.com/mario_pan/", linkedin: "https://www.linkedin.com/in/mario-pandapotan-simarmata/")),
        
        Member(name: "Yudha",fullName: "Yudha\nPratama",image:DesignImages.abdan ,color: DesignColors.purple,colorGallup: DesignColorGallups.purple, infoMember: InfoMember(age: "20th", role: "Designer", gallup: "Analytical"),linkMember: LinkMember(instagram: "https://www.instagram.com/ydhprtam/", linkedin: "https://www.linkedin.com/in/ydhprtam/")),
    ]
}
