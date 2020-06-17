//
//  DetailViewController.swift
//  Project1
//
//  Created by Adam Chamberlin on 09/06/2020.
//  Copyright © 2020 Adam Chamberlin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet var imageView: UIImageView!
  
  var selectedImage: String?
  var selectedPictureNumber = 0
  var totalPictures = 0
  
  override func viewDidLoad() {
    
    // Run the super viewDidLoad
    super.viewDidLoad()
    
    // Do not use large title
    navigationItem.largeTitleDisplayMode = .never

    // Set the window title
    title = "Picture \(selectedPictureNumber) of \(totalPictures)"
    
    // Load the selected image
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }

}
