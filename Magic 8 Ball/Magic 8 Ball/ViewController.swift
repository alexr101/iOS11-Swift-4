//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Alex Padilla JR on 11/7/17.
//  Copyright © 2017 Alex Padilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBallImg: UIImageView!
    let imageArr = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateMagicBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    
    func updateMagicBall() {
        let randomNum = Int( arc4random_uniform(5) )
        magicBallImg.image = UIImage( named: imageArr[randomNum] )
    }


}

