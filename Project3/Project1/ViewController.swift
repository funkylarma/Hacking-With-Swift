//
//  ViewController.swift
//  Project1
//
//  Created by Adam Chamberlin on 04/06/2020.
//  Copyright © 2020 Adam Chamberlin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  var pictures = [String]()

  override func viewDidLoad() {
    
    // Call the super viewDidLoad
    super.viewDidLoad()
    
    // Set large tiles
    navigationController?.navigationBar.prefersLargeTitles = true
    
    // Set the title
    title = "Storm Viewer"
    
    // Create a file manager object
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    // Find all the images and add them to the array
    for item in items {
      if item.hasPrefix("nssl") {
        // this is a picture to load!
        pictures.append(item)
      }
    }
    
    pictures.sort()
    
    print(pictures)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    return cell
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    // 1: try loading the "Detail" view controller and typecasting it to be DetailViewController
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
      
      // 2: success! Set its selectedImage property
      vc.selectedImage = pictures[indexPath.row]
      vc.selectedPictureNumber = indexPath.row + 1
      vc.totalPictures = pictures.count
      
      // 3: now push it onto the navigation controller
      navigationController?.pushViewController(vc, animated: true)
    }
  }
}

