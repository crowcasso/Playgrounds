/**
 *  Using Dictionaries (Associative Arrays)
 *
 *  Joel Hollingsworth / Nov. 3, 2017
 */
import Foundation

// An example class for storing user information
class UserInfo {
    //: Properties
    var email: String
    var firstName: String
    var lastName: String
    var birthMonth: Int
    var birthDay: Int
    var birthYear: Int
    
    //: Initializer
    init(email: String, firstName: String, lastName: String, month: Int, day: Int, year: Int) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.birthMonth = month
        self.birthDay = day
        self.birthYear = year
    }
}


//: Main Code

// create an empty dictionary that can be used to associate
// a user's screen name with information about that user
var users = [String: UserInfo]()

// let's put some data into the dictionary
users["boomtic"] = UserInfo(email: "charlene.black59@example.com", firstName: "Charlene", lastName: "Black", month: 8, day: 7, year: 1975)
users["alpaking"] = UserInfo(email: "anthony.lane26@example.com", firstName: "Anthony", lastName: "Lane", month: 11, day: 3, year: 1981)
users["numeriso"] = UserInfo(email: "hannah.jackson41@example.com", firstName: "Hannah", lastName: "Jackson", month: 8, day: 7, year: 1973)
users["snowlizard"] = UserInfo(email: "alex.warren95@example.com", firstName: "Alex", lastName: "Warren", month: 11, day: 4, year: 1970)
users["dragonluma"] = UserInfo(email: "lillie.little76@example.com", firstName: "Lillie", lastName: "Little", month: 5, day: 7, year: 1979)
users["blueshadez"] = UserInfo(email: "sara.fuller17@example.com", firstName: "Sara", lastName: "Fuller", month: 9, day: 2, year: 1973)
users["archlight"] = UserInfo(email: "joe.fowler94@example.com", firstName: "Joe", lastName: "Fowler", month: 2, day: 2, year: 1974)
users["servight"] = UserInfo(email: "minnie.holt30@example.com", firstName: "Minnie", lastName: "Holt", month: 6, day: 7, year: 1973)
users["nenerill"] = UserInfo(email: "carmen.martin88@example.com", firstName: "Carmen", lastName: "Martin", month: 4, day: 7, year: 1979)
users["barantor"] = UserInfo(email: "dave.kuhn35@example.com", firstName: "Dave", lastName: "Kuhn", month: 10, day: 3, year: 1982)

// Example 1: display relationship between screen name and email address using a loop

/*
 *  Iterate over the array
 *      user is one item in the array
 *
 *      user.key is the screen name (or key part of the key/value pair)
 *      user.value is the UserInfo object (or value part of the key/value pair)
 */
print("\nExample 1.1\n===========")
for user in users {
    print("\(user.key) is \(user.value.email)")
}

/*
 *  Iterate over the array
 *      (screenName, userInfo) is a tuple (key, value)
 *
 *      screenName is the key
 *      userInfo is the value
 */
print("\nExample 1.2\n===========")
for (screenName, userInfo) in users {
    print("\(screenName) is \(userInfo.email)")
}


// Example 2: randomly pick one user from the array

/*
 * (1) Use our normal method for picking a random index, based on the count of the array
 * (2) Calling the enumerated() function on the array returns a tuple (index, user)
 * (3) Use user.key to get the screen name
 * (4) Use user.value to get the UserInfo object (user.value.email to get the email String)
 */
print("\nExample 2.1\n===========")
let which = Int(arc4random_uniform(UInt32(users.count)))
print("which = \(which)")
for (index, user) in users.enumerated() {
    if which == index {
        print("===> \(index): \(user.key) is \(user.value.email)")
    } else {
        print("\(index): \(user.key) is \(user.value.email)")
    }
}



// Example 3: randomly pick one user from the array AND DELETE IT

/*
 * (1) Use our normal method for picking a random index, based on the count of the array
 * (2) Calling the enumerated() function on the array returns a tuple (index, user)
 * (3) Use user.key to get the screen name
 * (4) Use user.value to get the UserInfo object (user.value.email to get the email String)
 */
print("\nExample 3.1\n===========")
print("which = \(which)")
for (index, user) in users.enumerated() {
    if which == index {
        print("deleting this one ===> \(index): \(user.key) is \(user.value.email)")
        users.removeValue(forKey: user.key)
    } else {
        print("\(index): \(user.key) is \(user.value.email)")
    }
}

// show the array after deleting an item
print("\n")
for (screenName, userInfo) in users {
    print("\(screenName) is \(userInfo.email)")
}
