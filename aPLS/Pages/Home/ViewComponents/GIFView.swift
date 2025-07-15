//
//  GIFView.swift
//  aPLS
//
//  Created by Mario Pandapotan Simarmata on 15/07/25.
//


import SwiftUI
import UIKit
import ImageIO

struct GIFView: UIViewRepresentable {
    let gifName: String

    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView()
        imageView.loadGif(name: gifName)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }

    func updateUIView(_ uiView: UIImageView, context: Context) {}
}

extension UIImageView {
    func loadGif(name: String) {
        DispatchQueue.global().async {
            guard let path = Bundle.main.path(forResource: name, ofType: "gif") else { return }
            guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else { return }

            guard let source = CGImageSourceCreateWithData(data as CFData, nil) else { return }
            var images = [UIImage]()
            let count = CGImageSourceGetCount(source)
            for i in 0..<count {
                if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                    images.append(UIImage(cgImage: cgImage))
                }
            }

            let duration = 1.5
            DispatchQueue.main.async {
                self.animationImages = images
                self.animationDuration = duration
                self.startAnimating()

                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    self.stopAnimating()
                    self.image = images.last
                }
            }
        }
    }
}
