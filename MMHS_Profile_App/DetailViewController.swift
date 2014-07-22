//
//  DetailViewController.swift
//  MMHS_Profile_App
//
//  Created by Vik Denic on 7/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

//ViewController for WebView

class DetailViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad()
    {
        //Create URL and load it into webview via a request
        var websiteURL = NSURL(string: "http://google.com")
        var urlRequest = NSURLRequest(URL: websiteURL)
        myWebView.loadRequest(urlRequest)
    }

    //Dismiss the viewcontroller via back button
    @IBAction func onBackButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}