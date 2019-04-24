// наброски

import Foundation

// Убрать из массива все четные числа
var array: [Int] = Array(0...100)
for i in array{
    if (i % 2) > 0{
        array.remove(at: array.index(of: i)!)
        print(i)
    }
}

// Создать массив из 100 чисел
var myarray: [Int] = Array(0...100)
    print(myarray)
 

//ok
var x = 1
for i in stride(from: 0, to: 100, by: 3){
    print(i)
}


