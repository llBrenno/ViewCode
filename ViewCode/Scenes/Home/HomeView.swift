//
//  HomeView.swift
//  ViewCode
//
//  Created by Brenno Rodrigues on 20/06/22.
//

import UIKit

class HomeView: UIView {
    //MARK: Properties
    lazy var scrollButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Go to ScroolView", for: .normal)
        button.setTitleColor(.white, for:  .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var tableButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Go to TableView", for: .normal)
        button.setTitleColor(.white, for:  .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        settingConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Methods
    func settingConstraints() {
        addSubview(scrollButton)
        NSLayoutConstraint.activate([
            scrollButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            scrollButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            scrollButton.widthAnchor.constraint(equalToConstant: 200),
            scrollButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        addSubview(tableButton)
        NSLayoutConstraint.activate([
            tableButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            tableButton.topAnchor.constraint(equalTo: scrollButton.bottomAnchor, constant: 30),
            tableButton.widthAnchor.constraint(equalToConstant: 200),
            tableButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
