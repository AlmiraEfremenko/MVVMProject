//
//  SecondViewController.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    private var label: UILabel = {
        let label = UILabel()
        label.textColor = .systemRed
        label.text = "Это ученик нашего курса!!!"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(label)
        title = "Второй экран"
        setupLayout()
    }
    
    func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
