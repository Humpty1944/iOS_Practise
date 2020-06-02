//
//  PhotoFullViewController.swift
//  photo_viewer_app
//
//  Created by Назарова on 02.06.2020.
//  Copyright © 2020 Назарова. All rights reserved.
//

import UIKit

class PhotoFullViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image=image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
