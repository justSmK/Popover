//
//  PopOverCollectionViewCell.swift
//  Popover
//
//  Created by justSmK on 8/24/22.
//

import Foundation
import UIKit

class PopOverCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: PopOverCollectionViewCell.self)
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .orange
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews() {
        backgroundColor = .white
        addSubview(logoImageView)
        addSubview(nameLabel)
    }
    
    public func setConfigure(iconName: String, text: String) {
        logoImageView.image = UIImage(systemName: iconName)
        nameLabel.text = text
    }
    
}

// MARK: - Set Constraints

extension PopOverCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            logoImageView.heightAnchor.constraint(equalToConstant: 20),
            logoImageView.widthAnchor.constraint(equalToConstant: 20),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
