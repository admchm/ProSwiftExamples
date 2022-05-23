import UIKit

/* PATTERN MATCHING */
// vaildating one value using switch
let name = "adam"

switch name {
case "bilbo":
    print("Hello, Bilbo Baggins!")
case "adam":
    print("Hello, Adam!")
default:
    print("Authentication failed")
}

// validating two values using switch
let authName = "adam"
let password = "test$554@1s"

switch (authName, password) {
case ("bilbo", "baggin5"):
    print("Hello, Bilbo Baggins!")
case ("adam", "test$554@1s"):
    print("Hello, Adam!")
default:
    print("Who are you?")
}

// validating two values using switch and tuple
let authenticationData = (name: "Adam", password: "test$554@1s")

switch authenticationData {
case ("bilbo", "baggin5"):
    print("Hello, Bilbo Baggins!")
case ("adam", "test$554@1s"):
    print("Hello, Adam!")
default:
    print("Who are you?")
}

// validating two values using switch and tuple with a partial match
let authenticationDataExpanded = (name: "Adam", password: "test$554@1s", ipAddress: "127.0.0.1")

switch authenticationDataExpanded {
case ("bilbo", "baggin5", _):
    print("Hello, Bilbo Baggins!")
case ("adam", "test$554@1s", _):
    print("Hello, Adam!")
default:
    print("Who are you?")
}

// validating two values using switch and tuple (with matching only a part of it, but still wanting to know the other part)
let authData = (name: "Adam", password: "test$554@1s")

switch authData {
case ("bilbo", "baggin5"):
    print("Hello, Bilbo Baggins!")
case ("adam", let password):
    print("Hello, Adam! Your password is \(password)" )
default:
    print("Who are you?")
}
