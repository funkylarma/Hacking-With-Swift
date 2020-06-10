/*
 Optionals
 */

//func getHaterStatus() -> String {
//  return "Hate"
//}
//
//getHaterStatus()

//func getHaterStatus() -> String? {
//  return "Hate"
//}

func getHaterStatus(weather: String) -> String? {
  if weather == "sunny" {
    return nil
  } else {
    return "Hate"
  }
}

//var status: String
var status = getHaterStatus(weather: "rainy")

func takeHaterAction(status: String) {
  if status == "Hate" {
    print("Hating")
  }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
  takeHaterAction(status: haterStatus)
}

// Optional chaining

func albumReleased(year: Int) -> String? {
  switch year {
  case 2006: return "Talor Swift"
  case 2009: return "Fearless"
  case 2010: return "Speak Now"
  case 2012: return "red"
  case 2014: return "1989"
  default: return nil
  }
}

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")
