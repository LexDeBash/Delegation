//
//  ViewController.swift
//  delegation
//
//  Created by Alexey Efimov on 16.04.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var getImageButton: UIButton!
    
    let controller = Controller()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func getImage(_ sender: UIButton) {
        controller.updateImage()
        imageView.image = controller.image
        getImageButton.isHidden = true
    }
    
}

