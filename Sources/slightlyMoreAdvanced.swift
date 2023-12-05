// closures let us take lines of code and group it together to use elsewhere in our program.
// closures usually don't have names. they are functions without names and are not supposed to be run.
// they are to be passed around your code.
// so closures are passed to functions as parameters. They have curly braces so you would be passing the curly braces
// to the function as a parameter. the function would then run the closure.
// think of them like c# lambdas or javascript callback functions which are usally anonymized because they often are passed
// without a name.


//classes
class Payment {
    var payee: String
    var amount: Double
    var confirmed: Bool
    var description: String?
    var reward: Double {
        get {
            return amount * 0.01
        }
        set {
            amount = newValue * 100
        }
    } // computed properties cannot be constants ( so declared with a let keyword ) and must be variables ( so declared with a var keyword )
    //set block can be omitted so it becomes a readonly computed property.
    // computed properties can also get rid of the get and curly braces so it would just have the return statement and computation.



    // constructor
    // swift will not allow you to instantiate a class without default values for properties in a class
    init() {

    }

    // deinitializer and I will never need to call this myself.
    //allowed only in classes
    deinit {
      // cleanup code should go here if needed.
      // swift uses ARC (automatic reference counting) to manage memory.
    }


    func reportPayment() -> String {
        return "\(payee) has been paid \(amount) and the payment is \(confirmed ? "confirmed" : "not confirmed")"
    }
}

// structs can have initializers but not deinitializers
// as usual classes are reference types while structs are value types
// if you are checking if 2 instances of a class are the same you use === which is calle the identity operator
// if you are checking if 2 instances of a struct are the same you use == which is called the equality operator
// swift classes don't inherit from a universal base class like object in C# or NSObject in Objective-C
// inheriting classes can override the init function if they have properties that the superclass doesn't have
// to call the superclass init function you use super.init(). keyword final can be used to prevent a class from being inherited from
// and final to a superclass function prevents it from being overridden in a subclass


// swift has extension methods like C# does. they are called extensions in swift.
extension Payment {
    func addSymbolToAmount() -> String {
        return "$\(self.amount)"
    }
} // this extension adds the addSymbolToAmount function to the Payment class
// extensions can also be used to add computed properties to a class or struct

// -----> Protocols <--------
// it sounds very similar to interfaces in c# and objective-c
// classes can adopt multiple protocols but can only inherit from one class. A lot like C# interfaces.
// protocols are just a list of properties and methods that a class or struct must implement if it adopts the protocol.
protocol MyProtocol {
  var name: String { get set } // or just get if it is a readonly property. Conforming to protocols is a lot like implementing interfaces in C#.
}

// error hanlding
// functions that can throw errors are marked with the throws keyword
// functions that can throw errors must be called with the try keyword inside a do-catch block 
// so when expecting a value from a function that could throw, the value usually shows up as an optional
// so you have to unwrap it. You would preceed the function execution with a try? and in that case an
// if let result = try? function() { // do something with result }

// guard keyword is used to exit a function early if a condition is not met.
// guard is a lot like the if statement but it is used to exit a function early if a condition is not met.
// guard some-condition-i-need-to-be-true else {
  // wha-we-do-if-the-condition-is-not-met
// }
// else block must exit the current scope. so it must return, break, continue or throw an error.