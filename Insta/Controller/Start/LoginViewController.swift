//
//  ViewController.swift
//  Insta
//
//  Created by Nguyen Xuan Tinh on 11/30/17.
//  Copyright © 2017 Nguyen Xuan Tinh. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func registerNewUser(username: String, password: String){
        var ref: DatabaseReference!
        ref = Database.database().reference(fromURL: "https://kistagram-e91ec.firebaseio.com/")
        ref.updateChildValues(["name/user" : "adasd"])
        ref.child("users/userid").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let username = value?["name"] as? String ?? ""
            print(username)
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func dismiss_onClick(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func buttonClick(_ sender: Any) {
    }
}

