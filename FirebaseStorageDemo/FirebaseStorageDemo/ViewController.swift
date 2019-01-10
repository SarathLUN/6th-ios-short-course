//
//  ViewController.swift
//  FirebaseStorageDemo
//
//  Created by Soeng Saravit on 12/14/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import FirebaseStorage

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func uploadButtonPressed(_ sender: Any) {
        
        let imgData = UIImage.jpegData(self.imageView.image!)
    
        let imageName = UUID().uuidString
        let ref = Storage.storage().reference().child("pictures/\(imageName).jpg")
        let meta = StorageMetadata()
        meta.contentType = "image/jpeg"
        
        self.uploadToCloud(data: imgData(0.5)!, ref: ref, meta: meta)
        
    }
    
    @IBAction func browsePhoto(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func uploadToCloud(data:Data, ref:StorageReference, meta:StorageMetadata) {
        ref.putData(data, metadata: meta) { (metaData, error) in
            if let e = error {
                print("==> error: \(e.localizedDescription)")
            }else {
                ref.downloadURL(completion: { (url, error) in
                    print("Image URL: \((url?.absoluteString)!)")
                })
            }
        }
    }
}

extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            self.imageView.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
}
