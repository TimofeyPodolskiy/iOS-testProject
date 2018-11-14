//
//  SplashScreenViewViewController.swift
//  TestTableView
//
//  Created by Admin on 12.10.2018.
//  Copyright © 2018 ANK. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var loginForm: UIView!
    @IBOutlet weak var loginField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAndRunAnimations()
    }
    
    func setupAndRunAnimations() {
        
        let transitionY = loginForm.frame.minY - logoView.center.y - logoView.bounds.height / 2 - 20
        let transitionX = loginField.frame.minX - logoView.frame.minX
        
        UIView.animate(withDuration: 0.5, delay: 2.0, options: [], animations: {
            self.loginForm.alpha = 1.0
        })
        
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [.curveEaseInOut], animations: {
            self.logoView.transform = CGAffineTransform(translationX: transitionX, y: transitionY)
        })
        
    }
    
    @IBAction func logInBtn_TouchUp(_ sender: Any) {
        print("Touched...")
    }
    
}
