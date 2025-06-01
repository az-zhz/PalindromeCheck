public func isPalindrome(input: String) -> Bool {
    let filtered = input.compactMap { char -> Character? in
        if char.isLetter || char.isNumber {
            return Character(char.lowercased())
        }
        return nil
    }

    if filtered.count < 2 {
        return false
    }

    return filtered == filtered.reversed()
}

// Example test cases
print(isPalindrome(input: "A man, a plan, a canal: Panama")) // true
print(isPalindrome(input: "race a car"))                     // false
print(isPalindrome(input: "a"))                              // false
print(isPalindrome(input: "No lemon, no melon"))             // true

