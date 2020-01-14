//: [Previous](@previous)
//: # 1.7: Documentation
//: # How to access apple docs
//: ## Two different kinds of documentation -> In Xcode and out of Xcode
//: ## Outside Xcode:
//: ## Online Docs (developer.apple.com/documentation) (Or just google the class or type you're looking for)

//: **CHALLENGE 1 (WHY?)**: Here's a string:
let example1 = "Por Que?"
//: This word is a Spanish word however, and should have an accent mark on the `e`

//: **Look at the documentation for STRING to figure out how to create a string that will print out as the correct spelling with an accent mark**


//: **Challenge 2 (PalindrWHAT?)** A Palindrome is a word that is spelled the same backwards and forwards ("racecar", "radar", "kayak", "madam" etc.)

//: Write a function that can determine if a single word is a palindrome (Hint: Keep reading the String Documentation)

func isPalindromeWord(subject: String) -> Bool {
    return subject.rever
}

let shouldBeTrue = isPalindromeWord(subject: "racecar")
if !shouldBeTrue {
    print("YOU FAILED")
}
let shouldBeFalse = isPalindromeWord(subject: "iOS")
if shouldBeFalse {
    print("YOU FAILED!")
}
let shouldAlsoBeTrue = isPalindromeWord(subject: "Kayak")
if !shouldAlsoBeTrue {
    print("YOU FAILED!")
}

//: Documentation for `func reversed()`
//: Documentation for `ReversedCollection<String> `
//: Documentation for lowercased()
//: [Next](@next)




























// Challenge 1
let answer = "Por que\u{301}?"
print(answer)


// Challenge 2
//func isPalindromeWord(subject: String) -> Bool {
//    guard !subject.contains(" ") else { return false }
//    return subject.lowercased() == String(subject.lowercased().reversed())
//}

let tests = ["racecar", "banana"]

for subject in tests {
    print(subject)
    let isPal = isPalindromeWord(subject: subject)
    if isPal {
        print("✅")
    } else {
        print("😳")
    }
}
