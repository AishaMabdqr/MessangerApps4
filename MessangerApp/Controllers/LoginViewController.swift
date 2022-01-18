//
//  LoginViewController.swift
//  MessangerApp
//
//  Created by A Ab. on 15/06/1443 AH.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        FirebaseAuth.Auth.auth().signIn(withEmail: email.text!, password: pass.text!, completion: { authResult, error in
            guard let result = authResult, error == nil else {
                print("Failed to log in user with email \(self.email.text!)")
                return
            }
            let user = result.user
            print("logged in user: \(user)")
        })
    }
    
}
