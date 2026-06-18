// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Prints the welcome statement.
        print("Welcome to Sleep Tracker.")

        /// Arrasy for all the days of the week.
        let daysOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

        /// Starts the while loop.
        var isRunning: Bool = true

        while isRunning {
             /// Collects total and average hours slept.
            var totalHours: Int = 0
            var averageHours: Int = 0

            print("Let's start be recording your sleep.")

            // Printing days of the week and collecting number of hours slept.
            for day in daysOfWeek {
                print("How many hours did you sleep on \(day)?")
                var hoursSlept: Int = Int(readLine()!)!
                if hoursSlept >= 0, hoursSlept <= 24 {
                    totalHours += hoursSlept
                } else {
                    print("Only enter the number between 0 and 24.")
                    print("How many hours did you sleep on \(day)?")
                    hoursSlept = Int(readLine()!)!
                }
            }

            /// Calculates average hours.
            averageHours = totalHours / 7

            // Prints the total and average hours.
            print("You got total of \(totalHours) hours of sleep this week, which averages to \(averageHours) per day.")

            // Checks the average hours and gives sleep rating.
            if averageHours >= 8 {
                print("You have met the recommended 8 hours of sleep per night this week.")
                print("Your sleep rating is: Healthy")
            } else if averageHours >= 6 {
                print("You have not met the recommended 8 hours of sleep per night this week.")
                print("Your sleep rating is: Ok")
            } else {
                print("You have not met the recommended 8 hours of sleep per night this week.")
                print("Your sleep rating is: Poor")
            }

            // Asking if they want to record another week.
            print("Would you like to record another week? (Y/N)")
            let answer = readLine()!.lowercased()

            // Stoping program if N is entered.
            if answer == "n" {
                isRunning = false
                print("Thank you for using sleep tracker")
            }
    }
}}
