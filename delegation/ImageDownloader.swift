//
//  ImageDownloader.swift
//  delegation
//
//  Created by Alexey Efimov on 16.04.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import UIKit

class ImageDownloader {

    var didDownload = DelegetedCall<UIImage>()
    
    func downloadImage(url: NSURL) {
        guard let data = try? Data(contentsOf: url as URL),
            let image = UIImage(data: data) else {
                return
        }

        self.didDownload.callback?(image)
    }
}


