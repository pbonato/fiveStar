//
//  ViewController.swift
//  TestStar
//
//  Created by Bonato Pierantonio on 23/05/18.
//  Copyright © 2018 Bonato Pierantonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myVote: fiveStar!
    @IBOutlet weak var myVote1: fiveStar!
    @IBOutlet weak var myVote2: fiveStar!
    @IBOutlet weak var myVote3: fiveStar!
    
    @IBOutlet weak var lblTest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myVote1.delegate = self
        myVote2.delegate = self
        myVote3.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func slideVote(_ sender: UISlider) {
        myVote.value = Double(sender.value)
    }
}

extension ViewController:fiveStarDelegate {
    func fiveStartValueDidChange(sender: fiveStar, value: Double) {
        let ret:Double = (myVote1.value + myVote2.value + myVote3.value) / 3
        myVote.value = ret
        
        self.lblTest.text = String(format: "%.3f", ret)
        
    }
    
    
}
