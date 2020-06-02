//
//  ViewController.swift
//  photo_viewer_app
//
//  Created by Назарова on 02.06.2020.
//  Copyright © 2020 Назарова. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
   
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableViewImages: UITableView!
    
    var imageArray = [MyImages]()
      var imagePicker = UIImagePickerController()
    
    @IBAction func clickToImportImage(_ sender: Any) {
      
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! ViewCellTableViewCell
        //let images:MyImages = imageArray[indexPath.row]
        if(imageArray.count==0){
        }
        else{
            cell.imageView?.image = imageArray[indexPath.row].imageURL

        }

        return cell
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let vc = storyboard?.instantiateViewController(identifier: "PhotoFullViewController") as? PhotoFullViewController
        vc?.image=imageArray[indexPath.row].imageURL
        self.navigationController?.pushViewController(vc!, animated: true)
tableView.deselectRow(at: indexPath, animated: true)
       }
       
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            imageArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
            self.tableViewImages.reloadData()
        }
    }
   func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            print(imageArray.count)
            imageArray.append(MyImages())
            imageArray[imageArray.count-1].imageURL=pickedImage
        }
     
        dismiss(animated: true, completion: nil)
    self.tableViewImages.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewImages.dataSource=self
        tableViewImages.delegate=self
        imagePicker.delegate=self
        // Do any additional setup after loading the view.
    }
   

}

