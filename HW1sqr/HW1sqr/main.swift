//
//  main.swift
//  HW1sqr
//
//  Created by Borash on 30.03.2019.
//  Copyright © 2019 Borash. All rights reserved.
//

import Foundation

var x1: Double = 0
var x2: Double = 0
var D: Double = 0

//ВВодим А, В, С
let a: Double = 2
let b: Double = -88
let c: Double = 4

//Формула дискриминанта
D = b * b - 4 * a * c

//Дискриминант больше 0
if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("Превый корень = \(x1); Второй корень = \(x2)")

//Дискриминант равен 0
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")

//Дискриминант меньше 0
} else {
    print("Решений нет")
}
