import UIKit

var arr: [Int] = [Int]()

for i in 1...255{
    arr.append(i)
}


var randomNumber1 = Int.random(in: 0..<255)
var randomNumber2 = Int.random(in: 0..<255)

while randomNumber1 == randomNumber2 {
    randomNumber2 = Int.random(in: 0..<255)
}

var temp = arr[randomNumber1]
arr[randomNumber1] = arr[randomNumber2]
arr[randomNumber2] = temp

var uniqueNumbers = Set<Int>()

while uniqueNumbers.count < 100{
    uniqueNumbers.insert(Int.random(in: 0..<255))
}

var n = 1
var i: Int = -1
var j: Int = -1
var t: Int

for num in uniqueNumbers{
    if n == 1{
        i = num
        n += 1
    }
    else{
        n = 1
        j = num
        t = arr[i]
        arr[i] = arr[j]
        arr[j] = t
    }
}

var idx = arr.firstIndex(of: 42)
arr.remove(at: idx!)
print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(idx!)")


