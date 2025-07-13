//
//  DetailViewWrapper.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 13/07/25.
//

import SwiftUI

struct DetailViewWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return DetailViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
