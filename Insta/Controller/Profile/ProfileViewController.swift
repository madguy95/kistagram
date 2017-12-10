//
//  ProfileViewController.swift
//  Insta
//
//  Created by Nguyen Xuan Tinh on 12/5/17.
//  Copyright © 2017 Nguyen Xuan Tinh. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var disLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
        self.profileImageView.clipsToBounds = true;
    self.disLabel.adjustsFontSizeToFitWidth = false;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
