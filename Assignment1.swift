import Foundation

// Constant for app name
let appName = "PlatTrack"

// Variable for current user count
var currentUserCount = 1

print("App Name: \(appName)")
print("Current Users: \(currentUserCount)")

currentUserCount += 1
print("Updated Users: \(currentUserCount)")

// Explicit Types
var totalGames: Int = 10
var completionRate: Double = 87.5
var username: String = "Manuel"
var isPremiumUser: Bool = false

// Type Inference (Swift figures it out automatically)
var totalTrophies = 120
var averageCompletion = 92.3
var gamerTag = "TrophyHunter"
var hasPlatinum = true

print(totalGames)
print(completionRate)
print(username)
print(isPremiumUser)

print(totalTrophies)
print(averageCompletion)
print(gamerTag)
print(hasPlatinum)

let playerName = "Manuel"
let gamesCompleted = 15
let completionPercentage = 75.5

let summary = "\(playerName) has completed \(gamesCompleted) games with an average completion rate of \(completionPercentage)%."

print(summary)

// 2d
var userNickname: String? = "PlatKing"

if let nickname = userNickname {
    print("Nickname: \(nickname)")
} else {
    print("No nickname set")
}

// 2e
func validateEmail(_ email: String?) -> Bool {
    guard let email = email, !email.isEmpty else {
        return false
    }
    return true
}

// Test
print(validateEmail("player@plattrack.com"))
print(validateEmail(nil))

// 2f
var userAge: Int? = nil
let age = userAge ?? 18
print("User Age: \(age)")

// 2g
/*
 if-let:
 Use when you want to safely unwrap an optional and handle both nil and non-nil cases.

 guard-let:
 Use inside functions to exit early if a value is nil. Keeps code cleaner and avoids nested logic.

 nil coalescing (??):
 Use when you want to provide a default value if an optional is nil.
*/

// 3h
let gameTitles = ["Spider-Man 2", "God of War Ragnarok", "Arkham Knight", "Elden Ring", "Horizon Forbidden West"]

// 3i
var gameInfo: [String: String] = [
    "favoriteGame": "Spider-Man 2",
    "platform": "PlayStation",
    "status": "Active"
]

// 3j
var mutableGames = gameTitles

// Adding to array:
mutableGames.append("Ghost of Tsushima")

// Removing from array:
mutableGames.remove(at: 0)

// Accessing array element:
print("First game: \(mutableGames[0])")

// Adding to dictionary:
gameInfo["lastPlayed"] = "Yesterday"

// Removing from dictionary:
gameInfo["status"] = nil

// Accessing dictionary value:
print(gameInfo["platform"] ?? "Unknown platform")

// 3k
let duplicateGames = ["A", "B", "A", "C"]
let uniqueGames: Set = ["A", "B", "A", "C"]

print("Array:", duplicateGames)
print("Set:", uniqueGames)

// 4l
for (index, game) in mutableGames.enumerated() {
    print("\(index + 1): \(game)")
}

// 4m
let action = "view"

switch action {
case "view":
    print("Viewing game details")
case "edit":
    print("Editing game progress")
case "delete":
    print("Removing game from list")
default:
    print("Unknown action")
}

// 4n
var progress = 1

while progress <= 5 {
    print("Loading... \(progress * 20)%")
    progress += 1
}

// 5o
func greetUser(name: String, timeOfDay: String = "day") -> String {
    return "Good \(timeOfDay), \(name)! Welcome back to PlatTrack."
}

// Test
print(greetUser(name: "Manuel"))
print(greetUser(name: "Manuel", timeOfDay: "evening"))

// 5p
func calculateDiscount(price: Double, percentage: Int) -> Double {
    let discount = price * Double(percentage) / 100.0
    return price - discount
}

// Test
let discounted = calculateDiscount(price: 59.99, percentage: 20)
print(String(format: "%.2f", discounted))

// 5q
let uppercasedGames = mutableGames.map { $0.uppercased() }
print(uppercasedGames)

// 5r
let filteredGames = mutableGames.filter { $0.contains("a") }
print(filteredGames)
