//
//  ViewController.swift
//  Auto Layout Practice
//
//  Created by Angela Yu on 01/12/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let square = UIView(frame: CGRect(x: self.view.frame.width/2.0 - 50.0, y: self.view.frame.height/2.0 - 50.0, width: 100, height: 100))
        square.backgroundColor = UIColor.yellow
        
        self.view.addSubview(square)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

