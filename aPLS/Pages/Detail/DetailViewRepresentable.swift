//
//  Untitled.swift
//  aPLS
//
//  Created by Filza Rizki Ramadhan on 15/07/25.
//

import SwiftUI

struct DetailViewRepresentable: View {
    var listAPLS: [APLS]
    
    var body: some View {
        DetailViewWrapper(listAPLS: listAPLS).ignoresSafeArea()
    }
}
