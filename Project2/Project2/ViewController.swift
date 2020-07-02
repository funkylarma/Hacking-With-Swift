//
//  ViewController.swift
//  Project2
//
//  Created by Adam Chamberlin on 18/06/2020.
//  Copyright © 2020 Adam Chamberlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var button1: UIButton!
  @IBOutlet var button2: UIButton!
  @IBOutlet var button3: UIButton!
  
  var countries = [String]()
  var correctAnswer = 0
  var score = 0
  var question = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    button1.layer.borderWidth = 1
    button1.layer.borderColor = UIColor.lightGray.cgColor
    button2.layer.borderWidth = 1
    button2.layer.borderColor = UIColor.lightGray.cgColor
    button3.layer.borderWidth = 1
    button3.layer.borderColor = UIColor.lightGray.cgColor
    
    countries.append("estonia")
    countries.append("france")
    countries.append("germany")
    countries.append("ireland")
    countries.append("italy")
    countries.append("monaco")
    countries.append("nigeria")
    countries.append("poland")
    countries.append("russia")
    countries.append("spain")
    countries.append("uk")
    countries.append("us")
    
    askQuestion()
    
  }
  
  func askQuestion(action: UIAlertAction! = nil) {
    
    // Shuffle the countries array
    countries.shuffle()
    
    question += 1
    
    // Set the images for the buttons
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
    
    // Set the random answer
    correctAnswer = Int.random(in: 0...2)
    
    // Set the navigation bar title
    title = "Round: \(question)/10 | \(countries[correctAnswer].uppercased()) | Score: \(score)"
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    
    if (question == 10) {
      let ac = UIAlertController(title: "Game Over", message: "Your final score is \(score).", preferredStyle: .alert)
      ac.addAction(UIAlertAction(title: "Start Again?", style: .default, handler: askQuestion))
      present(ac, animated: true)
      
      question = 0
    }
    
    var title: String
    
    if sender.tag == correctAnswer {
      title = "Correct"
      score += 1
    } else {
      title = "Wrong, that is the flag for \(countries[sender.tag].uppercased())"
      score -= 1
    }
    
    let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
    present(ac, animated: true)
    
  }
  
}

