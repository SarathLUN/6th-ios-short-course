//
//  AddEditViewController.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/27/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var articleImageView: UIImageView!
    
    var articlePresenter:ArticlePresenter?
    var article:Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        articlePresenter = ArticlePresenter()
        articlePresenter?.delegate = self
        
        if let ar = self.article {
            self.navigationItem.title = "Edit"
            
            self.titleTextField.text = ar.title
            self.descriptionTextView.text = ar.description
            
            if let imageUrl = ar.image{
                if let url = URL(string: imageUrl) {
                    self.articleImageView.kf.setImage(with: url, placeholder: UIImage(named: "default"), options: nil, progressBlock: nil, completionHandler: nil)
                }
            }
            
        }
    
    }
    
    @IBAction func browseImage(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { (action) in
            self.selectImageSource(source: .camera)
        }
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { (action) in
            self.selectImageSource(source: .photoLibrary)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(camera)
        alert.addAction(photoLibrary)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func saveArticle(_ sender: Any) {
        let imgData = UIImage.jpegData(self.articleImageView.image!)
        
        if let ar = self.article {
            ar.title = self.titleTextField.text
            ar.description = self.descriptionTextView.text
            self.articlePresenter?.insertUpdateArticle(article: ar, img: imgData(0.5)!)
        }else{
            let article = Article()
            article.id = 0
            article.title = titleTextField.text
            article.description = descriptionTextView.text
            
            self.articlePresenter?.insertUpdateArticle(article: article, img: imgData(0.5)!)
        }
        
        
    }
    
    func selectImageSource(source:SelectPhotoEnum) {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.delegate = self
        if source == .camera{
            imagePicker.sourceType = .camera
        }else if source == .photoLibrary {
            imagePicker.sourceType = .photoLibrary
        }
        self.present(imagePicker, animated: true, completion: nil)
    }
    
}

extension AddEditViewController:ArticlePresenterDelegate{
    func responseArticle(articles: [Article], pagination: Pagination) {
    }
    
    func responseMessage(msg: String) {
        print("==>"+msg)
        let alert = UIAlertController(title: "Info", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}

extension AddEditViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            self.articleImageView.image = image
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
