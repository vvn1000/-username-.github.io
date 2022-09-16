import Foundation
//Opening message
func clear () {
    for _ in 1 ... 100 {
        print("")
    }
}
clear()
print("Hello!")
print("This program sorts the words you enter alphabetically")
print("")

var unsortedArray: [String] = []

var i: Int

func swap (words:inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp
}

func sort () {
    if unsortedArray.count > 1 {
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                let word2 : String = unsortedArray[j]
                let word1 : String = unsortedArray[j-1]
                let shorterWordLength = min(word1.count, word2.count)
                for k in 0..<shorterWordLength {
                    let char2 = word2[word2.index(word2.startIndex, offsetBy: k)]
                    let char1 = word1[word1.index(word1.startIndex, offsetBy: k)]
                    if char2 > char1 {
                        break
                    } else if char2 < char1 {
                        swap(words:&unsortedArray, firstIndex: j, secondIndex: (j-1))
                        break
                    } else if word1.count > word2.count {
                        swap(words:&unsortedArray, firstIndex: j, secondIndex: (j-1))                        
                    }
                }
            }
        }
    }
}

print("Please enter at least two words below, type 'leave' when you are ready to sort.")

/*
while (1 + 1 == 2) {
    
    if let input = readLine() {
        

        
        if input == "leave" || input == "Leave" {
            
            print("")
            
            print("Thank you for your input. Your words will be shorted shortly.")
            
            break
            
        } else {
            
            unsortedArray.append(input.lowercased())
            
        }
        
    }
    
    }
    
 */

while let input = readLine() {
    unsortedArray.append(input.lowercased())
}

sort()



i = 0



while i < unsortedArray.count {
    
    print("\(i+1). \(unsortedArray[i])")
    
    i += 1
    
}
