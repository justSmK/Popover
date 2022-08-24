//
//  PopOverViewController.swift
//  Popover
//
//  Created by justSmK on 8/24/22.
//

import UIKit

class PopOverViewController: UIViewController {
    
    private let popOverCollectionView = PopOverCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
        setConstraints()
    }
    
    private func setUpViews() {
        view.backgroundColor = .white
        view.addSubview(popOverCollectionView)
    }

}

// MARK: - Set Constraints

extension PopOverViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            popOverCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            popOverCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            popOverCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1),
            popOverCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
        ])
    }
}
