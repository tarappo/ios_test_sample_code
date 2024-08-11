//
//  ViewController.swift
//  xcode11.0
//
//  Created by Toshiyuki Hirata on 2020/03/14.
//  Copyright © 2020 tarappo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        count = count + 1

        label.text = "tap: \(count)"
    }
    
}

