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
        Member(name: "Abdan", color: DesignColors.blue),
        Member(name: "Alif", color: DesignColors.green),
        Member(name: "Filza", color: DesignColors.red),
        Member(name: "Mario", color: DesignColors.purple),
        Member(name: "Yudha", color: DesignColors.yellow),
    ]
}
