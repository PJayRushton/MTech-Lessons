//
//  ViewController.swift
//  LifecycleDemo
//
//  Created by Parker Rushton on 2/25/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        print("Gray 👽")
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
        print("White ☁️")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .black
        print("Black 💣")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .green
        print("Green ☘️")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .blue
        print("Blue 👕")
    }
    
}

