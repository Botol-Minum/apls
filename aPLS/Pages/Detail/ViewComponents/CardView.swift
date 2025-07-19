//
//  Card.swift
//  aPLS
//
//  Created by Filza Rizki Ramadhan on 13/07/25.
//

import UIKit
class CardView: UIView {
    init(iconName: String, title: String, description: String) {
        super.init(frame: .zero)
        setup(iconName: iconName, title: title, description: description)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup(iconName: String, title: String, description: String) {
        let iconImageView = UIImageView(image: UIImage(systemName: iconName))
        iconImageView.tintColor = .black
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 15),
            iconImageView.widthAnchor.constraint(equalToConstant: 15)
        ])
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = description
        descriptionLabel.font = UIFont.systemFont(ofSize: 12)
        descriptionLabel.textColor = .gray
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        
        let stackView = UIStackView(arrangedSubviews: [iconImageView, titleLabel, descriptionLabel])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .white
        layer.cornerRadius = 15
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 0, height: 11)
        layer.shadowRadius = 20
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        ])
    }
}
