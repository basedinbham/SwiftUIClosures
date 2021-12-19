import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// filter must return boolean; short hand allows for no return as code is only one line
let sortedNumbers = luckyNumbers.filter { $0.isMultiple(of: 2) == false }

// filtered amd sorted together
let sortedBetter = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted()
print(sortedBetter)

// $0 first considered, $1 second considered; alternate method to sort
let ascendingSort = sortedNumbers.sorted(by: { $0 < $1} )
print(ascendingSort)

// best filter, sorted, and mapped
let sortedBest = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number."}
print(sortedBest)

// print each result line by line
for item in sortedBest {
    print(item)
}

// different way to print each result line by line; not easier to read
luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number."}.forEach{ print($0) }

// creating own functions
func isOdd(number: Int) -> Bool {
    number.isMultiple(of: 2) == false
}

func luckyString(_ number: Int) -> String {
    "\(number) is a lucky number."
}

func printValue(_ string: String) {
    print(string)
}
// using custom functions
luckyNumbers.filter(isOdd).sorted().map(luckyString).forEach(printValue)
