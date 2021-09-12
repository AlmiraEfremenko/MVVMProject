//
//  Model.swift
//  MVVMProject
//
//  Created by MAC on 12.09.2021.
//

import Foundation

struct MVVMModel {
    let firstName: String
    let lastName: String
    let skillLevel: SkillLevel
    let age: Int
}

enum SkillLevel: String {
    case senior = "продвинутый"
    case junior = "начинающий"
    case middle = "средний"
}
