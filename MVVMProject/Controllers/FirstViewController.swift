//
//  FirstViewController.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation
import UIKit

class FirstViewController: UITableViewController, Coordinating {
    var coordinator: Coordinator?
    var viewModel: ViewModel!
    private var models = ViewModelData().modelsData

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Первый экран"
        tableView.register(MVVMTableViewCell.self, forCellReuseIdentifier: MVVMTableViewCell.identifier)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.tappedCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MVVMTableViewCell.identifier, for: indexPath) as! MVVMTableViewCell
        let model = models[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}
