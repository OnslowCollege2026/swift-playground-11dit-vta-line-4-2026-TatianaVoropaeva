// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Prints welcome message.
        print("Welcome to Zealandia Tracker.")

        // Creating constants for the lists of birds and insects. Bool for the while loop. Two lists of integers that will store the number of birds and insects seen.
        var isRunning: Bool = true
        let birds: [String] = ["Tieke", "Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]
        let insects: [String] = ["Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]
        var birdsSeen: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]
        var insectsSeen: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]

        /// Asks her if she saw a bird or insect.   
        while isRunning {
            print("Did you see a bird or insect/ Quit to quit: ")
            let birdOrInsect: String = readLine()!.lowercased()

            /// Asks her to select the bird/insect from a list of known species.
            if birdOrInsect == "bird" {
                birds.enumerated().forEach { index, bird in
                    print("\(index + 1). \(bird)")
                } 
                /// Adds to a tally of species she has seen.
                print("Enter a number: ")
                let userInput = readLine()!
                if let birdIndex: Int = Int(userInput)! && birdIndex > 0 {
                print("\(birds[birdIndex - 1]) added.")
                birdsSeen[birdIndex - 1] += 1
                }
            } else if birdOrInsect == "insect" {
                insects.enumerated().forEach { index, insect in
                    print("\(index + 1). \(insect)")
                }
                /// Adds to a tally of species she has seen.
                print("Enter a number: ")
                let insectIndex: Int = Int(readLine()!)!
                print("\(insects[insectIndex - 1]) added.")
                insectsSeen[insectIndex - 1] += 1
            } else if birdOrInsect == "quit" {
                isRunning = false
            } else {
                print("Incorrect input. Enter bird, insect or quit")
            }
        }
        /// Counts the species she has seen and shows her the totals.
        print("Today you have seen: ")
        for (bird, birdSeen) in zip(birds, birdsSeen ) {
            if birdSeen > 0 {
                print("\(birdSeen): \(bird)")
    }
}
        for (insect, insectSeen) in zip(insects, insectsSeen) {
            if insectSeen > 0 {
                print("\(insectSeen): \(insect)")
    }
}
    }
}
