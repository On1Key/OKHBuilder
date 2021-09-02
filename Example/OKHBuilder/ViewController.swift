//
//  ViewController.swift
//  OKHBuilder
//
//  Created by on1key@foxmail.com on 09/01/2021.
//  Copyright (c) 2021 on1key@foxmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let h5Engine = PDRCore.instance()
    
    override func loadView() {
        super.loadView()
        h5Engine?.setContainerView(view)
        h5Engine?.persentViewController = self
        
//        let args = "id=plus.runtime.arguments"
//        let locPath = Bundle.main.bundlePath.appending("/Pandora/apps/__UNI__E5FCCE0/www")
//        _ = h5Engine?.appManager?.openApp(atLocation: locPath, withIndexPath: "index.html", withArgs: args, with: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        h5Engine?.handle(.receiveMemoryWarning, with: nil)
    }

}

