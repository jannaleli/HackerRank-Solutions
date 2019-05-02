import UIKit

func winner(andrea: [Int], maria: [Int], s: String) -> String {
    // Write your code here
    
    var andreaArr = andrea
    var mariaArr = maria
    var finalValueMaria = 0
    var finalValueAndrea = 0
    switch s {
        
    case "Even":
        var andreaValue = 0
        var mariaValue = 0
        for i in 1...andrea.count - 1 where i % 2 == 0 {
            print(i)
            andreaValue -= andrea[i]
            mariaValue -= maria[i]
        }
        
        finalValueAndrea = andreaValue
        finalValueMaria = mariaValue
        
        
    case "Odd":
        var andreaValue = 0
        var mariaValue = 0
        for i in 0...andrea.count - 1 where i % 2 == 1 {
            print(i)
            andreaValue -= andrea[i]
            mariaValue -= maria[i]
        }
        
        
        finalValueAndrea = andreaValue
        finalValueMaria = mariaValue
        
    default:
        
        print("Fallback option")
    }
    
    
    if finalValueMaria > finalValueAndrea {
        return "Maria"
    }else if finalValueAndrea > finalValueMaria {
        return "Andrea"
    }
    
    return "Tie"
}



let whoWon = winner(andrea: [3,5,6], maria: [4,5,7], s: "Odd")
print(whoWon)
