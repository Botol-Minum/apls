//
//  DetailView.swift
//  aPLS
//
//  Created by Filza Rizki Ramadhan on 13/07/25.
//
import UIKit
 class DetailViewController: UIViewController {
    var listAPLS: [APLS]
    
     init(listAPLS: [APLS]) {
         self.listAPLS = listAPLS
         super.init(nibName: nil, bundle: nil)
     }

     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
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
    
        for (index, aPLS) in listAPLS.enumerated() {
            let card = CardView(iconName: "star.fill", title: aPLS.keywords ,description: aPLS.statement)
            
            mainStackView.addArrangedSubview(card)
            
            NSLayoutConstraint.activate([
                card.widthAnchor.constraint(equalToConstant: 300),
                card.heightAnchor.constraint(equalToConstant: 200)
            ])
            
            let angleInRadians = (CGFloat(index % 2 == 0 ? -3 : 3) * .pi) / 180
            card.transform = CGAffineTransform(rotationAngle: angleInRadians)
        }
    }
}
//
//#Preview{
//    
//    DetailViewController()
//}
