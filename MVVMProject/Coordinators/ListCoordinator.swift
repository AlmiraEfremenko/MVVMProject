//
//  ListCoordinator.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation
import UIKit

enum EvenT {
    case cellTapped
}

class ListCoordinator: Coordinator {
    var navigationController: UINavigationController?
    private(set) var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func eventOccurred(with type: EvenT) {
        switch type {
        case .cellTapped:
            var viewController: UIViewController & Coordinating = SecondViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func start() {
        let listViewModel = ViewModelData()
        listViewModel.coordinator = self
        let firstController = FirstViewController()
        firstController.viewModel = listViewModel
        navigationController?.setViewControllers([firstController], animated: true)
        
    }
}
