//
//  ViewController.swift
//  AppLifeCycleDemo
//
//  Created by Parker Rushton on 3/2/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer: Timer?
    var remainingTime = 60 {
        didSet {
            timeLabel.text = String(remainingTime)
        }
    }
    let numbers = [0, 1]
    var launchCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The app has launched \(launchCount) times")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("VIEW DID APPEAR")
        if let key = UserDefaults.standard.value(forKey: "launch") {
            timeLabel.text = "YOU CRASHED"
        } else {

            startTimer()
        }
    }
    
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            if self.remainingTime > 0 {
                self.remainingTime -= 1
            }

        })
    }
    
    func pauseTimer() {
        timer?.invalidate()
    }
    
}
