var unsortedArray: [String] = []

var i: Int

var moreWords = true

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

while moreWords {
    
    if let input = readLine() {

        if input == "leave" {
            moreWords = false
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
