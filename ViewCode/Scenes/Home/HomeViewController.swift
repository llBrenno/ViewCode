//
//  HomeViewController.swift
//  ViewCode
//
//  Created by Brenno Rodrigues on 20/06/22.
//

import UIKit

final class HomeViewController: UIViewController {
    //MARK: Properties
    let homeView = HomeView()
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view = homeView
        bindTargets()
    }
    
    //MARK: Methods
    @objc func goToScrollView() {
        self.navigationController?.pushViewController(ScrollViewController(), animated: true)
    }
    
    @objc func goToTableView() {
        self.navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    //MARK: BindTargets
    func bindTargets() {
        homeView.scrollButton.addTarget(self, action: #selector(goToScrollView), for: .touchUpInside)
        homeView.tableButton.addTarget(self, action: #selector(goToTableView), for: .touchUpInside)
    }
}
