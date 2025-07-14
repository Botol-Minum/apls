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
        Member(name: "Abdan",image:DesignImages.abdan, color: DesignColors.yellow),
        Member(name: "Alif",image:DesignImages.mario ,color: DesignColors.red),
        Member(name: "Filza",image:DesignImages.abdan, color: DesignColors.blue),
        Member(name: "Mario",image:DesignImages.mario, color: DesignColors.green),
        Member(name: "Yudha",image:DesignImages.abdan ,color: DesignColors.purple),
    ]
}
