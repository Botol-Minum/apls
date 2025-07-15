//
//  DetailView.swift
//  aPLS
//
//  Created by Filza Rizki Ramadhan on 13/07/25.
//
import UIKit
class DetailViewController: UIViewController {
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let mainStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 0
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        addCards()
    }
    
    private func setupLayout() {
        view.addSubview(scrollView)
        view.backgroundColor = .white
        scrollView.addSubview(contentView)
        contentView.addSubview(mainStackView) 
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor),
             
            mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    private func addCards() {
        let cards = [
            CardView(iconName: "star.fill", title: "Process Beyond Output", description: "The real value is in the exploration, thinking, and iteration."),
            CardView(iconName: "star.fill", title: "Progress Over Perfection", description: "There is no done in learning. We are permanent works in progress. Our aim is not to be finished, but to be forward."),
            CardView(iconName: "star.fill", title: "AI Accelerates, I Navigate", description: "AI makes things faster, but learning teaches me where to go and why. Speed is nothing without direction."),
            CardView(iconName: "star.fill", title: "AI Accelerates, I Navigate", description: "AI makes things faster, but learning teaches me where to go and why. Speed is nothing without direction.")
        ]
        
        let rotations: [CGFloat] = [3, -3, 3, -3]
        
        for (index, card) in cards.enumerated() {
            mainStackView.addArrangedSubview(card)
            
            NSLayoutConstraint.activate([
                card.widthAnchor.constraint(equalToConstant: 300),
                card.heightAnchor.constraint(equalToConstant: 200)
            ])
            
            let angleInRadians = (rotations[index] * .pi) / 180
            card.transform = CGAffineTransform(rotationAngle: angleInRadians)
        }
    }
}

#Preview{
    DetailViewController()
}
