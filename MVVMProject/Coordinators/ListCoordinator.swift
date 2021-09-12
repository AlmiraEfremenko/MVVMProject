//
//  ListCoordinator.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation
import UIKit

enum Event {
    case cellTapped
}

class ListCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func eventOccured(with type: Event) {
        switch type {
        case .cellTapped:
            var viewControllers: UIViewController & Coordinator = Second
        default:
            <#code#>
        }
    }
    
    
    func start() {
        <#code#>
    }
    
    
    
}
