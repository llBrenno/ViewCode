//
//  TableView.swift
//  ViewCode
//
//  Created by Brenno Rodrigues on 20/06/22.
//

import UIKit

class TableView: UIView {
    //MARK: Properties
    let tableTest: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(CustomTableCell.self, forCellReuseIdentifier: CustomTableCell.identifier)
        return table
    }()
    
    //MARK: Overrides
    override init(frame: CGRect) {
        super.init(frame: frame)
        settingConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Methods
    func settingConstraints() {
        let safeArea = safeAreaLayoutGuide
        addSubview(tableTest)
        NSLayoutConstraint.activate([
            tableTest.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tableTest.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            tableTest.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tableTest.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
    }
}
