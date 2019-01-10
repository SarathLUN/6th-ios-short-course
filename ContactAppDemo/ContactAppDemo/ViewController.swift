//
//  ViewController.swift
//  ContactAppDemo
//
//  Created by Soeng Saravit on 12/12/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var phoneTextField: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var contact:Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker.delegate = self
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        if let cont = contact {
            
            self.navigationItem.title = "Edit Contact"
            
            self.nameTextField.text = cont.name
            self.phoneTextField.text = cont.phone
            self.profileImageView.image = UIImage(data: cont.photo!)
        }
    
    }

    @IBAction func browseImage(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { (action) in
            self.browseImageCase(imageCase: .camera)
        }
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { (action) in
            self.browseImageCase(imageCase: .photoLibrary)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(camera)
        alert.addAction(photoLibrary)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func saveContact(_ sender: Any) {
        let imgData = UIImage.jpegData(self.profileImageView.image!)
        
        if self.contact != nil {
            let updatedContact = findContact(id: self.contact!.objectID)
            updatedContact!.name = nameTextField.text
            updatedContact!.phone = phoneTextField.text
            updatedContact!.photo = imgData(0.8)
        }else{
            let contact = Contact(context: context)
            contact.name = nameTextField.text
            contact.phone = phoneTextField.text
            contact.photo = imgData(0.8)
        }
        
        appDelegate.saveContext()
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func browseImageCase(imageCase: ImageChooseCase)  {
        imagePicker.allowsEditing = false
       
        switch imageCase {
        case .camera:
            imagePicker.sourceType = .camera
        case .photoLibrary:
            imagePicker.sourceType = .photoLibrary
        }
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func findContact(id:NSManagedObjectID) -> Contact? {
        if let contact = context.object(with: id) as? Contact {
            return contact
        }
        return nil
    }
}

extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage {
            self.profileImageView.image = image
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}

enum ImageChooseCase {
    case camera
    case photoLibrary
}
