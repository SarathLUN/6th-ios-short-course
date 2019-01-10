import UIKit

//var str = "Hello, playground"
//
//var a = 10
//var b = 20
//
//var sum = a + b
//
//print(str)
//print(sum)

//print(
//    "Hello"
//)
//
//var str = "Hello"
//print(str)

//var abc1 = "Hello"
//
//print(abc1)
//
//var dollar = "Dollar"
//print(dollar)
//
//var `class` = "Kompong Cham"
//print(`class`)

//var age = 19
//var distance = 20.9
//var str = "Hello world"

//func sum(a:Int, b:Int) -> Int {
//    let s = a + b
//    return s
//}
//
//let s1 = sum(a: 10, b: 10)
//print(s1)

//var age:Int
//age = 20
//print(age)

//var a,b,c: Int
//
//print(a)

//var អាយុ​:Int = 10
//
//print(អាយុ​)

// ---- Type Safe

//var age:Int = 20
//
//age = "Hello"

//------ Type Inference

//var age = 20    // age : Int
//age = "Hello"

//var str = """
//        "Hello'
//How are you?
//"""
//print(str)

//var str = "\"Hello\""
//
//print(str)
//
//var dollar = "\u{AE}"
//print(dollar)

//let dollar = "\u{24}"
//
//var str = "The sum of 1+2: \(1+2)\(dollar) \\"
//
//print(str)

//let num = "123"
//
//let convertedNum = Int(num)
//
//print(convertedNum)

//var age:Int?
//
//age = 30
//
//print(age)
//
//var a = 120
//
//var str = String(a)
//
//print(str)

//var a = 2
//
//a += 5        //a = a + 5
//
//print(a)

//var a = 5
//var b = 3
//
//var result = (a>b) ? "a is greater":"b is greater"
//
//print(result)

//var range = 1...10      // Closed Range Operator
//
//for i in range {
//    print(i)
//}

//var range1 = 1..<5      // Half Open Range Operator
//
//for j in range1 {
//    print(j)
//}

//var range2 = ...2
//
//print(range2.contains(-10000000000000000))

//var allowEntry = false
//var hasKey = false
//
//if allowEntry || hasKey {
//    print("Allow Entry")
//}else {
//    print("Not allow")
//}

//var num = 20
//
//if(num == 20){
//    print("Number is \(num)")
//}

//var temperature = 10
//
//if temperature <= 15 {
//    print("The weather is cold")
//}else {
//    print("The weather is warm")
//}

//---- Score -----
//    <50 : F
//50 - 60 : E
//60 - 70 : D
//70 - 80 : C
//80 - 90 : B
//90 - 100 : A

//var score = 120
//var grade:String = ""
//
//if score < 50 {
//    grade = "F"
//}else if score < 60 {
//    grade = "E"
//}else if score < 70 {
//    grade = "D"
//}else if score < 80 {
//    grade = "C"
//}else if score < 90 {
//    grade = "B"
//}else if score <= 100 {
//    grade = "A"
//}else{
//    print("Invalid score")
//}
//print("Congrats! you get grade: \(grade)")

//var character:Character = "A"
//
//switch character {
//case "a","A":
//    print("First alphabet")
//case "z":
//    print("Last alphabet")
//default:
//    print("not match")
//}

//
//var score = 100
//var grade = ""
//
//switch score {
//case 0..<50:
//    grade = "F"
//case 50..<60:
//    grade = "E"
//case 60..<70:
//    grade = "D"
//case 70..<80:
//    grade = "C"
//case 80..<90:
//    grade = "B"
//case 90...100:
//    grade = "A"
//default:
//    print("score not available")
//}
//
//print("You got grade: \(grade)")


//let names = ["Anna", "Alex", "Jack", "John"]
//
//for name in names {
//    print("Hello \(name)")
//}


//let range = 1...5
//
//for val in range {
//    print("the value is \(val)")
//}

//let apple = "Apple"
//
//for c in apple {
//    print(c)
//}

let numberOfLegs = ["Spider":8, "Ant":6, "Cat":4]
//
//for (name, leg) in numberOfLegs {
//    print("\(name) has \(leg) legs.")
//}

//var i = 11
////
////while i <= 10 {
////    print(i)
////    i += 1
////}
//

//// Continue
//
//for i in 1...5 {
//    if i == 3 {
//        continue
//    }
//    print(i)
//}

// Break
//for i in 1...5 {
//    if i == 3{
//        break
//    }
//    print(i)
//}

//var arr = [1,2,3,4,5,6]

//for a in arr{
//    print(a)
//}

//print(arr[3])       // Accessing array element

//var arr = [[[1,2,3],[4,5,6]],[[7,8,9],[10,11]]]

//print(arr[0][2])
//print(arr)
//arr.append(7)
//print(arr)
//arr.append(contentsOf: [8,9])
//print(arr)

//var arr = [2,1,3,6,4,5]
//arr.insert(111, at: 4)
//print(arr)
//arr.remove(at: 3)
//print(arr)
//arr.removeFirst()
//print(arr)
//arr.removeLast()
//print(arr)
////arr.removeAll()
////print(arr)
//print(arr.count)
//print(arr.isEmpty)
//print(arr.first!)
//print(arr.last!)
//print(arr)
//arr.sort(){ $0 > $1 }
//print(arr)
//let sortedArr = arr.sorted()
//print(arr)
//print(sortedArr)


//var arr = [2,1,3,6,4,5]
//
////let filterArr = arr.filter { $0 <= 5 && $0 >= 2  }
////
////print(filterArr)
//
////for a in arr{
////    print(a)
////}
//
////arr.forEach { print($0) }
//
//for a in stride(from: 10, through: 1, by: -2){
//    print(a)
//}

//var set = Set<String>() // Empty set
//print(set.count)
//set.insert("Apple")
//set.insert("Mango")
//set.insert("Banana")
//set.insert("Stawberry")
//print(set.count)
//print(set)
//
////var genres:Set<String> = ["Apple", "Banana", "Mango", "Stawberry"]
////print(genres)
//
//for s in set {
//    print(s)
//}
//
//
//var dic = ["US":"United States","CA":"Cambodia","UK":"United Kingdom"]
//
//var dic1 = [String:String]()             // Empty Dictionary
////var dic1 = Dictionary<String, String>()
//
////print(dic.count)
////print(dic.isEmpty)
//
//print(dic["CA"]!)
//
//dic["KO"] = "Korea"     // Add new element to dictionary
////dic1["JP"] = "Japan"
//
//print(dic)
////print(dic1)
////dic["KO"] = "Koreas"
//dic.updateValue("Korean", forKey: "KO")
//print(dic)
//
////dic.removeValue(forKey: "KO")
//dic["KO"] = nil
//print(dic)

//var person = ("Dara", 20, true)
//var person = (name:"Dara", age:20, single:true)

//person.1 = 22
//print(person.age)
//print(person)
//print(person.0)
//print(person.age)

//var name = "Dara"
//var age = 22
//var single = true

//var (name, age, single) = ("Dara", 22, true)
//
//print(name)

//let number = 42
//
//let nsNumber: NSNumber = number as NSNumber
//
////print(nsNumber)
////
////let newNumber = nsNumber as? Bool
////print(newNumber)
//
//let number = 42
//let nsNumber: NSNumber = number as NSNumber
//let format = NumberFormatter()
//
//format.numberStyle = .spellOut
//
//let str = format.string(from: nsNumber)
//
//print(str!)

//let bool = false
//
//let newBool = bool as NSNumber
//
//print(newBool)
//
//let newBool1 = newBool as? Int
//print(newBool1)

//let num:NSNumber = 23
//
//let st:NSString = "Hi"
//print(st)
//
//let str = "Hello"
//
//let nsstr:NSString = str as NSString
//
//print(nsstr)
//
//let newStr = nsstr as String
//print(newStr)
//
//let arr:NSArray = ["Pencil", "Pen", "Book", "Bag"]
//
//print(arr[1])
//
//let swiftArr = ["Pencil", "Pen", "Book", "Bag"]
//let newArr = swiftArr as NSArray
//
//let nsArr:NSArray = ["Pencil", 10, true]
//
//let arr1:[Any] = nsArr as! [Any]
//var value = arr1[0]
//var strVal = value as? String
//print(strVal!)

//
//struct Resolution {
//    var width = 0
//    var height = 0
//}
//
//class VideoMode {
//    var resolution = Resolution()
//    var framerate = 0.0
//    var name = ""
//}

// Value type

//let hd = Resolution(width: 1920, height: 1080)
//
//var cimena = hd
//cimena.width = 2030
//
//print("HD width: \(hd.width)")
//print("Cinema width: \(cimena.width)")
//
//let tenEighty = VideoMode()
//tenEighty.framerate = 25.0
//tenEighty.name = "1080i"
//tenEighty.resolution = hd
//
//var alsoTenEighty = tenEighty
//alsoTenEighty.framerate = 30.0
//
//print("TenEight framerate: \(tenEighty.framerate)")
//print("Also TenEight framerate: \(alsoTenEighty.framerate)")


//class Employee {
//    // MARK: - Stored Properties
//    var firstName:String
//    var lastName:String
//    var salaryYear:Double
//
//    // MARK: Computed Property
//    var salaryWeek:Double {
//        get{
//            return salaryYear / 52
//        }
//        set(newSalaryWeek){
//            salaryYear = newSalaryWeek * 52
//        }
//    }
//
//    // Initializer
//    init() {
//        self.firstName = ""
//        self.lastName = ""
//        self.salaryYear = 0.0
//    }
//
//    init(firstName:String, lastName:String, salaryYear:Double) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.salaryYear = salaryYear
//    }
//}
//
//var emp = Employee()
//print(emp.salaryYear)
//
//var emp1 = Employee(firstName: "Dara", lastName: "Heng", salaryYear: 1000)
//print(emp1.firstName)
//print(emp1.lastName)
//print(emp1.salaryYear)
//print(emp1.salaryWeek)
//emp1.salaryWeek = 20
//print(emp1.salaryYear)

//class PropObserver {
//    var myValue: Int = 10 {
//        willSet(nv) {
//            print("--- Will Set ----")
//            print("Current value:\(myValue)")
//            print("New value that will set: \(nv)")
//        }
//        didSet(ov) {
//            print("--- Did Set ---")
//            print("Current value:\(myValue)")
//            print("Old value : \(ov)")
//        }
//    }
//}
//
//let p = PropObserver()
//p.myValue = 15


//class MyClass {
//    static var myValue:Int = 0
//    // Type Property
//    static var storedTypeProperty = "Some Value"
//    static var computedTypeProperty:Int {
//        get {
//            return 50
//        }
//        set {
//            myValue = newValue
//            print(newValue)
//        }
//    }
//}
//
//MyClass.storedTypeProperty = "New Value"
//print(MyClass.storedTypeProperty)
//print(MyClass.computedTypeProperty)
//MyClass.computedTypeProperty = 100
//print(MyClass.myValue)

//class Employee {
//    // MARK: - Stored Properties
//    var firstName:String
//    var lastName:String
//    var salaryYear:Double
//
//    // MARK: Computed Property
//    var salaryWeek:Double {
//        get{
//            return salaryYear / 52
//        }
//        set(newSalaryWeek){
//            salaryYear = newSalaryWeek * 52
//        }
//    }
//
//    // Initializer
//    init() {
//        self.firstName = ""
//        self.lastName = ""
//        self.salaryYear = 0.0
//    }
//
//    init(firstName:String, lastName:String, salaryYear:Double) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.salaryYear = salaryYear
//    }
//    // Method
//    func toString() -> String {
//        return "Employee [First Name:\(firstName), Last Name:\(lastName), Salary Year:$\(salaryYear)]"
//    }
//}
//
//var emp = Employee(firstName: "Heng", lastName: "Dara", salaryYear: 1000)
//print(emp.toString())


// Mark: Inheritance

// -- Base Class

//class Vehicle {
//    var currentSpeed:Float = 0.0
//    var description:String {
//        return "traveling at \(currentSpeed) km per hour"
//    }
//
//    class func makeNoise() {
//        print("Defined method for sub-class to override")
//    }
//}
//
//class Bicycle: Vehicle {
//    var hasBasket = false
//
//    override class func makeNoise() {
//        print("Bicycle has no sound")
//    }
//}
//
//let bicycle = Bicycle()
//bicycle.currentSpeed = 20.0
//bicycle.hasBasket = true
//print("Bicycle is \(bicycle.description)")
//Bicycle.makeNoise()

//class Car: Vehicle {
//    var hasGear = false
//    var gear = 1
//
//    override var description: String {
//        return super.description + " in gear \(gear)"
//    }
//
//    override func makeNoise() {
//        print("Car has noise: tran tran....")
//    }
//}
//
//let car = Car()
//car.currentSpeed = 20.0
//car.hasGear = true
//print("Car is \(car.description)")
//car.makeNoise()


// --- Overloading ---

//class Calculator {
//    func sum(val:Int) {
//        print(val+val)
//    }
//    func sum(val1:Int, val2:Int) {
//        print(val1+val2)
//    }
//    func sum(val1:Float, val2:Float) {
//        print(val1+val2)
//    }
//    func sum(val1:Float, val2:Float) -> Float{
//       return val1+val2
//    }
//}
//
//let cal = Calculator()
//cal.sum(val1: 10, val2: 10)
//let value:Float = cal.sum(val1: 10, val2: 20)
//print(value)

// Function without parameters
//func sayHello() {
//    print("Hello Everyone")
//}
//
//sayHello()


//func sayHello(firstName:String, lastName:String) {
//    print("Hello \(firstName) \(lastName)")
//}
//
//sayHello(firstName: "Heng", lastName: "Dara")

//func sayHello(firstName:String, lastName:String) -> String {
//    return "Hello \(firstName) \(lastName)"
//}
//
//let str = sayHello(firstName: "Heng", lastName: "Hong")
//print(str)


//func findMinMax(_ values:[Int]) -> (min:Int, max:Int){
//    var currentMax = values[0]
//    var currentMin = values[0]
//    for value in values {
//        if value < currentMin {
//            currentMin = value
//        }else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//
//var array = [10, 20, 5, 3, 4, 100]
//
//var result = findMinMax(array)
//print("Min Value:\(result.min)")
//print("Max Value:\(result.max)")


//func arithmeticMean(_ numbers:Double...) -> Double {
//    var total = 0.0
//    for num in numbers {
//        total += num
//    }
//    return total / Double(numbers.count)
//}
//
//let mean = arithmeticMean(1,2,3,4,5)
//print(mean)

//func swapTwoNumber(firstNumber a:inout Int, secondNumber b:inout Int){
//    let tmp = a
//    a = b
//    b = tmp
//}
//var x = 5, y = 10
//print("Before swap: x=\(x) , y=\(y)")
//swapTwoNumber(firstNumber: &x, secondNumber: &y)
//print("After swap: x=\(x) , y=\(y)")

//func chooseStepFunction(backward:Bool) -> ( (Int) -> Int ) {
//    func stepForward(input:Int) -> Int {
//        return input + 1
//    }
//
//    func stepBackward(input:Int) -> Int {
//        return input - 1
//    }
//
//    return backward ? stepBackward:stepForward
//}
//
//var result = chooseStepFunction(backward: false)
//var value = result(5)
//print(value)

//func sayHello(name: String) -> String {
//    return "Hello \(name)"
//}
//
//let str = {(name: String) -> String in
//    return "Hello \(name)"
//}
//
//let s = str("Dara")
//print(s)

//var sayHello: ((String, String) -> String)?
//
//sayHello = { "Hello \($0) \($1)" }
//
//let str = sayHello!("Hong", "Chenda")
//print(str)
//
//func sum(a:Int, b:Int, completion:(Int)->Void){
//    let s = a + b
//    completion(s)
//}
//
//sum(a: 10, b: 10) {
//    print($0)
//}


//protocol A {
//    static var myValue: String {get set}
//}
//
//class Test: A {
//
//    static var value:String = ""
//    static var myValue: String {
//        get {
//            return "hello"
//        }
//        set{
//            value = newValue
//        }
//    }
//}
//
//var t = Test()
//print(Test.myValue)


//protocol Flier {
//    func fly()
//}
//
//class Bird: Flier {
//    func fly() {
//        print("Bird fly .....")
//    }
//}
//
//class Duck: Flier {
////    func fly() {
////        print("Duck fly ......")
////    }
//}
//
//
//var b = Bird()
//b.fly()
//
//var d = Duck()
//d.fly()

//protocol A {
//    mutating func changeValue()
//}
//
//struct B: A{
//
//    var value:Int = 0
//
//    mutating func changeValue() {
//        value = 10
//        print(value)
//    }
//}
//
//var b = B()
//b.changeValue()

// --- Initializer Requirement ---
//protocol A {
//    init()
//    init(value:String)
//}
//
//
//class B: A {
//    required init() {
//        print("This is class B")
//    }
//
//    required init(value: String) {
//        print(value)
//    }
//}
//
//
//var b = B(value: "HRD Center")

//protocol CalculatorProtocol {
//    func sum(a:Int, b:Int) -> Int
//}
//
//class Calculator: CalculatorProtocol {
//    func sum(a: Int, b: Int) -> Int {
//        return a + b
//    }
//}
//class Run {
//    var a:Int
//    var b:Int
//    var c:CalculatorProtocol    // Use Procotol as Property type
//
//    init(a:Int, b:Int, c:CalculatorProtocol) {
//        self.a = a
//        self.b = b
//        self.c = c
//    }
//
//    func sum() -> Int {
//        let result = c.sum(a: a, b: b)
//        return result
//    }
//}
//
//var run = Run(a: 10, b: 20, c: Calculator())
//print(run.sum())


//protocol A {
//    init()
//    func a()
//}
//
//protocol B: A{
//    init()
//    func b()
//}
//
//class C: B {
//
//    required init() {
//        print("init")
//    }
//
//    func b() {
//        print("b method")
//    }
//
//    func a() {
//        print("a method")
//    }
//}
//
//var c = C()
//c.a()

//protocol A: AnyObject {
//    func a()
//}
//
//class B: A {
//    func a() {
//
//    }
//}
//
//struct C: A {
//    func a() {
//
//    }
//}

//extension Double{
//    var km:Double {
//        return self * 1000
//    }
//    var m:Double {
//        return self
//    }
//    var cm:Double {
//        return self/100
//    }
//}
//
//var num = 10.0
//print(num.km)

//class A {
//    var a:Int = 0
//    var b:Int = 0
//    var name = "Dara"
//}


//extension A{
//    func sayHello() {
//        print("hello \(name)")
//    }
//}
//
//extension A{
//    func hi()  {
//        print("Hi")
//    }
//}
//
//var c = A()
//c.sayHello()
//c.hi()

//protocol A {
//    func a()
//}
//
//extension A {
//    func b(){
//        print("method b")
//    }
//}
//
//class C: A {
//    func a() {
//        print("a")
//    }
//}
//var c=C()
//c.a()
//c.b()

//enum Direction{
//    case up
//    case down
//    case left
//    case right
//}
//
//var direction = Direction.up
//
//direction = .down
//
//switch direction {
//case .up:
//    print("UP")
//case .down:
//    print("Down")
//case .left:
//    print("Left")
//case .right:
//    print("Right")
//default:
//    print("No direction")
//}
//
//enum ASCIIControlCharacter: Character {
//    case tab = "\t"
//    case lineFeed = "\n"
//    case carriageReturn = "\r"
//}
//
//enum Direction: String{
//    case up
//    case down
//    case left
//    case right
//}
//
//let direction = Direction.right.rawValue
//print(direction)
//
//enum Planet: Int {
//    case mercury = 4
//    case eath
//    case mars
//    case jupiter
//}
//
//let planet = Planet.mars.rawValue
//print(planet)

//enum Action {
//    case jump
//    case kick
//    case move(distance: Float)      // Associated value
//}
//
//let action = Action.move(distance: 30.0)
//
//switch action {
//case .jump:
//    print("Jump")
//case .kick:
//    print("Kick")
//case .move(let distance):
//    print("Move in \(distance)")
//}

//
//enum PlayerNumberError: Error {
//    case NumberTooHigh(description: String)
//    case NumberTooLow(description: String)
//    case NumberAlreadyAssigned
//    case NumberDoesNotExist
//}
//
//typealias BaseballPlayer = (firstName:String, lastName:String, number:Int)
//
//struct BaseBallTeam {
//    var players: [Int: BaseballPlayer]
//    var maxNumber: Int
//    var minNumber: Int
//
//    mutating func addPlayer(player:BaseballPlayer) throws {
//        guard player.number < maxNumber else{
//            throw PlayerNumberError.NumberTooHigh(description: "Max number is: \(maxNumber)")
//        }
//        guard player.number > minNumber else {
//            throw PlayerNumberError.NumberTooLow(description: "Min number is: \(minNumber)")
//        }
//        guard players[player.number] == nil else{
//            throw PlayerNumberError.NumberAlreadyAssigned
//        }
//
//        players[player.number] = player
//
//    }
//
//    func getPlayerByNumber(number:Int) throws -> BaseballPlayer {
//        if let player = players[number] {
//            return player
//        }else {
//            throw PlayerNumberError.NumberDoesNotExist
//        }
//    }
//}

//var baseballTeam = BaseBallTeam(players: [:], maxNumber: 99, minNumber: 10)

//do {
//    let player = try baseballTeam.getPlayerByNumber(number: 15)
//    print("Player is \(player.firstName) \(player.lastName)")
//} catch let err {
//    print("Error: \(err.localizedDescription)")
//}


//do {
//    try baseballTeam.addPlayer(player: ("Dany", "Ortiz", 20))
//}catch{
//    print("Error happened")
//}
//
//do {
//    let player = try baseballTeam.getPlayerByNumber(number: 20)
//    print("Player is \(player.firstName) \(player.lastName)")
//} catch let err {
//    print("Error: \(err)")
//}
//
//do {
//    try baseballTeam.addPlayer(player: ("Dany", "Ortiz", 100))
//}catch let err{
//    print(err)
//}


//var errorCode:Int?
//
//errorCode = 404
//if errorCode == nil {
//    print("no value")
//}else {
//    print(errorCode!)
//}

//let str = "String"
//
//let intValue = Int(str)
//
//if intValue == nil {
//    print("Can not cast")
//}else {
//    print(intValue!)
//}
//var str:String? = "Hello everyone!"
//str = nil
//
//if let newStr = str {
//    print(newStr)
//}
//
////guard let newStr1 = str  else {
////    print("")
////}
//
//print(newStr1)

//let authorName:String? = "Dara"
//let age:Int? = 20
//
//if let name = authorName, let a = age {
//    print("\(name) \(a)")
//}

//
//var value:Int?
//
//value = 23
//
//let newValue = value ?? 0
//
//print(value ?? "")

//struct Person {
//    var name:String = "Dara"
//    var age:Int = 20
//}
//
//var p:Person? = Person()
//
//
//print(p?.name)
//
//if let n = p?.name {
//    print(n)
//}

func getName() -> String? {
    return nil
}

if let name = getName() {
    print(name)
}else {
    print("Name search not found")
}












