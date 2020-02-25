//
//  ModalViewController.swift
//  LifecycleDemo
//
//  Created by Parker Rushton on 2/25/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        print("Purple 😈")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .darkGray
        print("Dark Gray 🎤")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .systemPink
        print("Pink 🌸")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = UIColor.systemBlue
        print("Blue 🌎")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .systemIndigo
        print("Indigo ☂️")
    }

    // MARK: - Actions
    
    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}
