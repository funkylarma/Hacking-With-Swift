/*
 Conditional Statements
 */

var action: String
var person = "hater"
var stayOutTooLate = true
var nothingInBrain = true

// If Else statements
if person == "hater" {
  action = "hate"
} else if person == "player" {
  action = "play"
} else {
  action = "cruise"
}

// Evaluating multiple conditions
if stayOutTooLate && nothingInBrain {
  action = "cruise"
}

// Looking for the opposite of truth
if !stayOutTooLate && !nothingInBrain {
  action = "cruise"
}
