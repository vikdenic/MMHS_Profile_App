//
//  DetailViewController.swift
//  MMHS_Profile_App
//
//  Created by Vik Denic on 7/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad()
    {
        var urlString = "http://www.google.com"
        myWebView.loadHTMLString(urlString, baseURL: nil)
    }

    @IBAction func onBackButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}