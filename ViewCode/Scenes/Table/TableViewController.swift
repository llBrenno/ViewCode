//
//  TableViewController.swift
//  ViewCode
//
//  Created by Brenno Rodrigues on 20/06/22.
//

import UIKit

final class TableViewController: UIViewController {
    //MARK: Properties
    let tableView = TableView()
    var arrayOfNumbers:[Int] = []
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TableView"
        view = tableView
        view.backgroundColor = .white
        tableView.tableTest.delegate = self
        tableView.tableTest.dataSource = self
        populateArray()
    }
    
    //MARK: Methods
    func populateArray() {
        for numero in 0...50 {
            arrayOfNumbers.append(numero)
        }
    }
}

//MARK: Extensions
extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNumbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableCell.identifier, for: indexPath) as! CustomTableCell
        cell.textLabel?.text = "Célula - \(arrayOfNumbers[indexPath.row])"
        return cell
    }
}

//MARK: TableViewCells
class CustomTableCell: UITableViewCell {
    static let identifier = "SelectedColorCollectionViewCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

