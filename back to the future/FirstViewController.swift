//
//  FirstViewController.swift
//  back to the future
//
//  Created by Mubarak Awal on 17/02/2019.
//  Copyright © 2019 Mubarak Awal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let year = Utils().getCurrentYear()
        label1.text = Utils().getStringAtIndex(year: year, position: 0)
        label2.text = Utils().getStringAtIndex(year: year, position: 1)
        label3.text = Utils().getStringAtIndex(year: year, position: 2)
        label4.text = Utils().getStringAtIndex(year: year, position: 3)
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)
    }
    
    @objc func tick(){
        timeLabel.text = Utils().getCurrentTime()
    }


}

