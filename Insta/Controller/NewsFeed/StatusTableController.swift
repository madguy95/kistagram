//
//  StatusTableController.swift
//  Insta
//
//  Created by Nguyen Xuan Tinh on 12/6/17.
//  Copyright © 2017 Nguyen Xuan Tinh. All rights reserved.
//

import UIKit

struct Data {
    var ava : UIImage
    var name: String
    var time: String
    var location: String
    var image: UIImage
    var caption: String
}
class StatusTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let postArrays =
        [Data(ava: #imageLiteral(resourceName: "Ned_Flanders"),name: "Christna Sanchez",time: "2 days ago",location: "⌾ Hanoi,Viet Nam",image: #imageLiteral(resourceName: "photo"), caption: "\"Hope begins in the dark, the stubborn hope that if you just show up and try to do the right thing, the da…\"Hope begins in the dark, the stubborn hope that if you just show up and try to do the right thing, the da…"),
        Data(ava: #imageLiteral(resourceName: "Lisa_Simpsons"),name: "Cristiano Ronaldo",time: "4 days ago",location: "⌾ Portugal",image: #imageLiteral(resourceName: "photo"), caption: " asdassssssss")]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return postArrays.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsFeedCell", for: indexPath) as! PostTableCell

        // Configure the cell...
        cell.userImageView.image = postArrays[indexPath.row].ava
        cell.userTiltleButton.titleLabel?.text = postArrays[indexPath.row].name
        cell.timeLineStatusLabel.text = postArrays[indexPath.row].time
        cell.locationStatusLabel.text = postArrays[indexPath.row].location
        cell.statusImageView.image = postArrays[indexPath.row].image
        cell.caption.text = postArrays[indexPath.row].caption
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.width + 50 + 50
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.width + 50 + 80
    }

}
