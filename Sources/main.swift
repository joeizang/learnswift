// The Swift Programming Language
// https://docs.swift.org/swift-book

var name = "joe"
var age = 45
var weight = 110.1
var height = 5.9
var martialStatus = "Married"
let religion: Religion = .christian("Christian")
let employmentStatus = "Employed"

let summaryOfPerson = "My name is \(name). I am a \(religion) and I am \(martialStatus). I am \(age) years young and I will always be \(employmentStatus). I weigh \(weight)kgs and I am \(height) feet tall."

enum Religion {
    case christian(String)
    case muslim(String)
    case hindu(String)
    case buddhist(String)
    case atheist(Int)
}

enum MaritalStatus {
    case married
    case single
    case divorced
    case widowed
}

enum TeamMemberRole {
    case developer
    case designer
    case communityManager
    case manager
}

enum employmentStatus {
    case employed
    case unemployed
    case selfEmployed
}

enum employmentType {
    case fullTime
    case partTime
    case contract
}

struct TeamMember {
    var name: String
    var age: Int
    var martialStatus: MaritalStatus
    var role: TeamMemberRole
    var religion: Religion
    var employmentState: employmentStatus
    var employmentType: employmentType
    var nationality: String
}

// so structs are instantiated with the memberwise initializer or inline constructors in C# 12 speak.
// structs have methods. structs can't be part of inheritance hierarchies. structs are value types.

// dictionaries
var memberResponsibilities = [
    "joe": "developer",
    "yann": "manager/teamLead",
] // there are always two types in a dictionary. one for the key and one for the value. the key must be unique. the value can be duplicated.

// get one value from the dictionary // doing this will always return an optional. because the key might not exist in the dictionary. so you have to unwrap it.
if let joe = memberResponsibilities["joe"] {
    print(joe)
} else {
    print("No team member called joe found!")
}
// you can update or add to dictionaries
memberResponsibilities["joe"] = "developer/teamLead"
memberResponsibilities["david"] = "developer"

// dictionaries can also be iterated over using the for..in loop
for (name, responsibility) in memberResponsibilities {
    print("\(name) is a \(responsibility)")
}

// tuples
// tuples are a way to group multiple values into a single compound value. the values within a tuple can be of any type and don't have to be of the same type as each other.


let joeizang = TeamMember(name: "Joseph Awari Izang", age: 45, martialStatus: .married, role: .developer, religion: .christian("Christian"), employmentState: .employed, employmentType: .contract, nationality: "Nigerian")

let yannlevreau = TeamMember(name: "Yannick Levreau", age: 43, martialStatus: .married, role: .manager, religion: .atheist(1), employmentState  : .employed, employmentType: .fullTime, nationality: "French")



print(summaryOfPerson)
