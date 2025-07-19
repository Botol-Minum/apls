//
//  DetailViewWrapper.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 13/07/25.
//

import SwiftUI

struct DetailViewWrapper: UIViewControllerRepresentable {
    var listAPLS: [APLS]
    
    func makeUIViewController(context: Context) -> DetailViewController {
        return DetailViewController(listAPLS: listAPLS)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
