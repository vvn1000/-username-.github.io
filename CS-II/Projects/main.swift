var unsortedArray: [String] = []

var i: Int

var moreWords = true

print("Hello!")
print("This program sorts the words you enter alphabetically")
/*
var requiredWords = 2
print("Please enter a word below")
if requiredWords > 0 {
    if let newWord = readLine() {
        print("Please enter one more word")
        let newWord2 = readLine() 
    }
    }
    
 */

func swap (words:inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp
}

func sort () {
    if unsortedArray.count > 1 {
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                var word2 : String = unsortedArray[j]
                var word1 : String = unsortedArray[j-1]
                for k in 0..<word2.count {
                    let char2 = word2[word2.index(word2.startIndex, offsetBy: k)]
                    let char1 = word1[word1.index(word1.startIndex, offsetBy: k)]
                    if char2 > char1 {
                        break
                    } else if char2 < char1 {
                        swap(words:&unsortedArray, firstIndex: j, secondIndex: (j-1))
                        break
                    }
                }
            }
        }
    }
}

print("Please enter 2 words below. Type 'leave' when you're ready to sort your words!")

while moreWords {
    if let input = readLine() {
        if input == "leave" {
            print("---------------------------------")
            break
        }
        
        unsortedArray.append(input.lowercased())
    }
}



sort()

i = 0

while i < unsortedArray.count {
    print("\(unsortedArray[i])")
    i += 1
}
