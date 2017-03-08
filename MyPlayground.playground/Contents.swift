//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

func addTwoNumbers(a:integer_t, num:integer_t)->integer_t{

    if a > num {
        return a
    } else {return num}
}

let addToFour = addTwoNumbers(a: 4, num: 6)

struct User {
    var age : Int
    var weight : Int
    var height : Int
    
   mutating func gainWeight(newWeight:Int){
        
        weight += newWeight
    }
    
}

var newUser = User.init(age: 15, weight: 100, height: 150)
newUser.gainWeight(newWeight: 50)
//print(newUser)

protocol Vehicle
{
    var numberOfWheels: Int {get}
    var color: UIColor {get set}
    
    mutating func changeColor()
}

struct MyCar: Vehicle {
    let numberOfWheels = 4
    var color = UIColor.blue
    
    mutating func changeColor() {
        color = UIColor.red
    }
}

var close1 = {


    () -> Void in
    
    print("这是一个闭")
}

close1()

let murderers = ["胖头陀", "陆高轩", "瘦头陀"]
//murderers.map({
//    (murderer: String) -> String in
//    "\(murderer) 已被洪教主杀死!"
//})

murderers.map { (Name:String) -> String in
    
    "\(Name) 已被洪教主杀死!"
}

let value = 1.000
switch value {
case 0.0 : print("1.0")
case 1.0 : print("1.5")
case 1.5: print("0.0")
default  : print("没有匹配")
}

