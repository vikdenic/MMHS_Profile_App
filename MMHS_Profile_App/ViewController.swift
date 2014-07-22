//
//  ViewController.swift
//  MMHS_Profile_App
//
//  Created by Vik Denic on 7/17/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imagePicker = UIImagePickerController()

    @IBOutlet var profileImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //set default profile pic
        profileImageView.image = UIImage(named: "stock_image")

    }
}

