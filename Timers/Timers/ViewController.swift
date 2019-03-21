//
//  ViewController.swift
//  Timers
//
//  Created by Mehmet Doğukan Sevinç on 21.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter=10
        timeLabel.text = String(counter)
        timer = Timer.init(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
    }
    @objc func timerFunction()
    {
        timeLabel.text = String(counter)
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text="Süre Bitti"
            
        }
        
    }

}

