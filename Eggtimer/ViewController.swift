//
//  ViewController.swift
//  Egg timer
//
//  Created by 전지훈 on 28/07/2019.
//  Copyright © 2019 전지훈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210

    @objc func dcreaseTimer(){
        
        if time > 0{
        
        time -= 1
        
        timerLabel.text = String(time)
            
        }else{
            
            timer.invalidate()
        }
    }
    @IBOutlet var timerLabel: UILabel!
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.dcreaseTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        
        timerLabel.text = String(time)
    }
    @IBAction func minusTen(_ sender: Any) {
        if time > 10{
        time -= 10
        
        timerLabel.text = String(time)
        }
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        
        time = 210
        timerLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

