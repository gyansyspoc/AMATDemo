//  BrowserViewController.swift
//  AMATDemo
//  Created by Gyansys.
//  Copyright © 2016 IOS Development. All rights reserved.

import UIKit

class BrowserViewController: UIViewController{
    
    var url:URL!
    var urlString = ""
    @IBOutlet weak var webView: UIWebView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if(urlString.isEmpty){
            urlString = hostName+locationData.url
        }
        
        url = URL (string: urlString)
        let requestObj = URLRequest(url: url!)
        webView.loadRequest(requestObj)
        self.view.addSubview(webView)
    }
    
    @IBAction func backToView(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
