//
//  PostTableCell.swift
//  Insta
//
//  Created by Nguyen Xuan Tinh on 12/4/17.
//  Copyright © 2017 Nguyen Xuan Tinh. All rights reserved.
//

import UIKit
import AVFoundation
class PostTableCell: UITableViewCell {

   
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userTiltleButton: UIButton!
    @IBOutlet weak var locationStatusLabel: UILabel!
    @IBOutlet weak var timeLineStatusLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    @IBOutlet weak var videoDemo: UIImageView!
    
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var bottomNewsFeed: UIStackView!
    var news: Status? {
        didSet {
            self.updateUI()
        }
    }

    func updateUI() -> Void {
//        statusImageView.image = UIImage(name: "photo")
        loadvideo()
        print("123")
        
    }
    //MARK: Actions
    func loadvideo(){
        let url = URL(string: "https://www.facebook.com/RealMadrid/videos/10151485220299953")!
        let avPlayer = AVPlayer(playerItem: AVPlayerItem(url: url))
        let avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.frame = videoDemo.bounds
        videoDemo.layer.insertSublayer(avPlayerLayer, at: 0)
        avPlayer.play()
    }
}
