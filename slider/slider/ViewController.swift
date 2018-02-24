//
//  ViewController.swift
//  slider
//
//  Created by zukako on 2018/02/23.
//  Copyright © 2018年 zukako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
//    senderにすると関数になる
    @IBAction func showValue(_ sender: UISlider) {
        lable.text = "\(sender.value)"
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

