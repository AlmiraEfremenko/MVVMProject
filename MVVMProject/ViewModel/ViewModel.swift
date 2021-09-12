//
//  ViewModel.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation

protocol ViewModel {
    var modelsData: [MVVMModel] { get set }
    
    func tappedCell()
}

final class ViewModelData: ViewModel {
    var coordinator: ListCoordinator?
    
    var modelsData =
        [MVVMModel(firstName: "Петя", lastName: "Стриж", skillLevel: .junior, age: 23),
         MVVMModel(firstName: "Вася", lastName: "Качин", skillLevel: .senior, age: 30),
         MVVMModel(firstName: "Маша", lastName: "Верз", skillLevel: .middle, age: 29),
         MVVMModel(firstName: "Катя", lastName: "Коту", skillLevel: .senior, age: 29),
         MVVMModel(firstName: "Ира", lastName: "Розд", skillLevel: .junior, age: 29),
         MVVMModel(firstName: "Женя", lastName: "Минар", skillLevel: .middle, age: 29),
         MVVMModel(firstName: "Зина", lastName: "Вирка", skillLevel: .junior, age: 29)
        ]
    
    public func tappedCell() {
        coordinator?.eventOccurred(with: .cellTapped)
    }
    
    
}


