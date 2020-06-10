
var evenNumbers = [2, 4, 6, 8]
var songs: [Any] = ["Shake it off", "you belong with me", "Back to December", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs2 = ["Today was a fairytale", "Welcome to New Yourk", "Fifteen"]
var both = songs + songs2

both += ["Everything has changed"]

var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]

/*
 If we add some white space dictonaries look easier
 var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
              ]
 */
