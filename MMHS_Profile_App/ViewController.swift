//
//  ViewController.swift
//  MMHS_Profile_App
//
//  Created by Vik Denic on 7/17/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()

    @IBOutlet var profileImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //must include UINavigationControllerDelegate to this
        imagePicker.delegate = self

        //set default profile pic
        profileImageView.image = UIImage(named: "stock_image")

        //give the profile pic a rounded frame
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.clipsToBounds = true
    }

    //Recognize tap on imageView and present photo library
    @IBAction func onImageTapped(sender: AnyObject) {

        presentViewController(imagePicker, animated: true, completion: nil)
    }

    //UIImagePickerController Delegate
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]!)
    {
        picker .dismissViewControllerAnimated(true, completion: {

            //Capture user's selected image from info[] dictionary
            var selectedImage = info[UIImagePickerControllerOriginalImage] as UIImage
            self.profileImageView.image = selectedImage
            println("DISMISSED")
            })
    }
}

