/*
 Properties
 */


struct Person {
  var clothes: String {
    willSet {
      updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
    }
    
    didSet {
      updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
    }
  }
  
  var shoes: String
  
  var age: Int
  
  var ageInDogYears: Int {
    get {
      return age * 7
    }
  }
  
  
  func describe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
  
  func updateUI(msg: String) {
    print(msg)
  }
}

var taylor = Person(clothes: "T-shirts", shoes: "sneakers", age: 25)
let other = Person(clothes: "short skirts", shoes: "high heels", age: 23)

taylor.describe()
other.describe()

taylor.clothes = "short skirts"

other.ageInDogYears

struct TaylorFan {
  static var favoriteSong = "Look Waht You Made Me Do"
  
  var name: String
  var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
