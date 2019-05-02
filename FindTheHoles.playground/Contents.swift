import UIKit
func countHoles(num: Int) -> Int {
    // Write your code here
    let xString : String = String(num)
    var holesCount = 0
    
    for each in xString {
        print(each)
        switch each {
            
        case "0", "9", "6" :
            holesCount += 1
        case "1", "2", "3", "4", "5", "7": continue
        case "8": holesCount += 2
        default:
            
            print("Fallback option")
        }
    }
    
    return holesCount
    
    
}

let countHoles3 = countHoles(num: 860)
print(countHoles3)



