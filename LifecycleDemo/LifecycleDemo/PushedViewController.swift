//
//  PushedViewController.swift
//  LifecycleDemo
//
//  Created by Parker Rushton on 2/25/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class PushedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        print("Brown 🦥")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .cyan
        print("Cyan 🐬")
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .magenta
        print("Magenta 🌺")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .red
        print("Red 🌹")
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .systemYellow
        print("Yellow 🌼")
    }
    
}
