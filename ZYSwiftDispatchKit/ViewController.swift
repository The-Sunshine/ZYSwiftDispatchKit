//
//  ViewController.swift
//  ZYSwiftDispatchKit
//
//  Created by zy on 2022/1/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        zy_dispatch_after(after: 3) {
            print("zy_dispatch_after - 1")
        }
        print("zy_dispatch_after - 2")
        
        zy_dispatch_global_async {
            print("zy_dispatch_global_async - 3")
        }

        zy_dispatch_main_async {
            print("zy_dispatch_main_async - 4")
        }
        
    }

    static let zy_dispatch_once: Void = {
        print("zy_dispatch_once")
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ViewController.zy_dispatch_once
    }
}


