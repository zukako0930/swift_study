//
//  ViewController.swift
//  SNS
//
//  Created by zukako on 2018/02/23.
//  Copyright © 2018年 zukako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showActivityView(_ sender: UIBarButtonItem) {
        func showMessage(){print("スタバ行きたい")}
        let controller = UIActivityViewController(activityItems: [imageView.image!,"こんにちは"],
                                                  applicationActivities: nil)
        self.present(controller, animated: true, completion: {print("クロージャ")})
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

