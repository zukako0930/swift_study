//
//  DetailViewController.swift
//  NewsReader
//
//  Created by zukako on 2018/02/28.
//  Copyright © 2018年 zukako. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController : UIViewController{
    @IBOutlet weak var webViews: WKWebView!
    
//    var link: String?
    var link: String!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let url = URL(string: self.link!){
        if let url = URL(string: self.link){
            let request = URLRequest(url: url)
            self.webViews.load(request)
        }
    }
}
