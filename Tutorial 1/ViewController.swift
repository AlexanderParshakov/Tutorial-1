//
//  ViewController.swift
//  Tutorial 1
//
//  Created by Alexander Parshakov on 11/7/19.
//  Copyright © 2019 Alexander Parshakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var buttonLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var buttonHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var helloButton: UIButton!
    
    @IBAction func onHelloButtonTouch(_ sender: Any) {
        createAlert(withTitle: "Welcome to My First App", andMessage: "Hello world")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
        setupButton()
    }

    func setupConstraints() {
        buttonLeadingConstraint.constant = view.frame.width * 0.2
        buttonTrailingConstraint.constant = view.frame.width * 0.2
        buttonHeightConstraint.constant = view.frame.height * 0.05
    }
    func setupButton() {
        helloButton.layer.cornerRadius = 10
        helloButton.setTitle("Hello world", for: .normal)
    }
}

// MARK: - Notifications
extension ViewController {
    
    func createAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
