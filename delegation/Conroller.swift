//
//  Conroller.swift
//  delegation
//
//  Created by Alexey Efimov on 16.04.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

class Controller {

    let downloader = ImageDownloader()
    var image: UIImage?
    var imageURL: NSURL?

    init() {
        
        downloader.didDownload.delegate(to: self) { (self, image) in
            self.image = image
        }
    }

    func updateImage() {
        imageURL = NSURL(string: "https://applelives.com/wp-content/uploads/2016/03/iPhone-SE-11.jpeg")
        if imageURL != nil {
            downloader.downloadImage(url: imageURL!)
        }
    }
}

