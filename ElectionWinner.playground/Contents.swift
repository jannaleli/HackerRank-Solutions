import UIKit

func electionWinner(votes: [String])  -> String {
    let arr = votes
    let counts = arr.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }
    
    print(counts)  // ["BAR": 1, "FOOBAR": 1, "FOO": 2]
    
    var sorted = counts.sorted{$0.value > $1.value}
    
    
    let maxValue = sorted.first!.value
    let newlySorted = sorted.filter {
        $0.value == maxValue
    }
    print(newlySorted)
    if newlySorted.count == 1 {
        return newlySorted.first!.key
    }else {
        
        let sortedNames = newlySorted.sorted(by: >)
        
        return sortedNames.first!.key
    }
    
    return ""
}

let winner =  electionWinner(votes: ["Alex", "Michael", "Harry", "Dave", "Victor", "Victor"])
print(winner)
