//
//  SecondViewController.swift
//  back to the future
//
//  Created by Mubarak Awal on 17/02/2019.
//  Copyright © 2019 Mubarak Awal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    let utils = Utils()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goDocClicked(_ sender: UIButton) {
        let year = utils.getRandomYear()
        label1.text = utils.getStringAtIndex(year: year, position: 0)
        label2.text = utils.getStringAtIndex(year: year, position: 1)
        label3.text = utils.getStringAtIndex(year: year, position: 2)
        label4.text = utils.getStringAtIndex(year: year, position: 3)
        animateButton(interval: 0.5, delay: 0.0, object: label1)
        animateButton(interval: 0.5, delay: 0.2, object: label2)
        animateButton(interval: 0.5, delay: 0.4, object: label3)
        animateButton(interval: 0.5, delay: 0.6, object: label4)
    }
    
    func animateButton(interval: Double, delay: Double, object: UIView){
        UIView.animate(withDuration: interval, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
            
        }
    }
    
}

