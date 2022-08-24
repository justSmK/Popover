//
//  ViewController.swift
//  Popover
//
//  Created by justSmK on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "swift")
        imageView.tintColor = .orange
        return imageView
    }()
    
    private let nameLable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textColor = .black
        lable.text = "cmd + B, cmd + R"
        lable.font = UIFont.boldSystemFont(ofSize: 30)
        return lable
    }()
    
    private lazy var tapButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitle("?", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tapButton.layer.cornerRadius = tapButton.frame.width / 2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        setConstraints()
    }
    
    private func setUpViews() {
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        view.addSubview(nameLable)
        view.addSubview(tapButton)
    }
    
    @objc private func didTapButton() {
        print("Tap")
    }

}

// MARK: - Set Constraints

extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            
            nameLable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLable.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 0),
            
            tapButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tapButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            tapButton.heightAnchor.constraint(equalToConstant: 50),
            tapButton.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}

