//
//  PhotoViewController.swift
//  Form1
//
//  Created by Melina Miranda on 10/01/2020.
//  Copyright © 2020 Melina Miranda. All rights reserved.
//

import UIKit
import Photos
class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var emptyPhoto: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        pickerController.allowsEditing = true
        let photo = PHPhotoLibrary.authorizationStatus()
        PHPhotoLibrary.requestAuthorization(){ photo  in}
        if photo == .authorized {
        present(pickerController, animated: true, completion: nil)
        }
        else{
            emptyPhoto.text = "We need access to your Gallery"
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if imageView.image != nil {
            return true
        }
        else {
            emptyPhoto.text = "You must choose a photo"
            return false
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "IDsegue"{
            let nvc = segue.destination as! NameViewController
                nvc.imagePicked = imageView.image
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as? UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

  
}

