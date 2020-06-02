//
//  MyImages.swift
//  photo_viewer_app
//
//  Created by Назарова on 02.06.2020.
//  Copyright © 2020 Назарова. All rights reserved.
//

import Foundation
import UIKit
class MyImages
{
    var name:String?
   public var imageURL:UIImage
    
    init(name:String?, imageURL:UIImage) {
        self.name=name
        self.imageURL=imageURL
    }
    init() {
        imageURL=UIImage()
        name=""
    }
}
