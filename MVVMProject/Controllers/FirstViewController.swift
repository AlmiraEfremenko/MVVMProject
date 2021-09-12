//
//  FirstViewController.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation
import UIKit

class FirstViewController: UITableViewController, Coordinating {
    var coordinator: Coordinator
    
    var coordinator: Coordinator?
    var viewModel: ViewModel!
    private var models = ViewModelData().modelsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Первый экран"
        
    }
}
