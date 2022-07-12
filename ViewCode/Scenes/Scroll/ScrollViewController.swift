//
//  ViewController.swift
//  ViewCode
//
//  Created by Usemobile PT000039 on 14/06/22.
//

import UIKit

final class ScrollViewController: UIViewController {
    //MARK: Properties
    let viewInterface = ScrollView()
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ScrollView"
        view.backgroundColor = .white
        view = viewInterface
    }
}

