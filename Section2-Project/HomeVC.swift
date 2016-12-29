//
//  HomeVC.swift
//  Section2-Project
//
//  Created by Arun Lakhera on 12/27/16.
//  Copyright © 2016 Arun Lakhera. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var userPost = [PostData]()
    
    @IBOutlet weak var tableView: UITableView!
    let tableIdentifier = "TableIdentifier"

    override func viewDidLoad() {
        
        let post1 = PostData(userName: "Arun Lakhera", post: "Today is Great", postImage: "image1.png", userImage: "user1.png")
        let post2 = PostData(userName: "Arpit Tandon", post: "Election Day", postImage: "image2.png", userImage: "user2.png")
        let post3 = PostData(userName: "Arun Raj", post: "Vacation Time is On", postImage: "image3.png", userImage: "user3.png")
        let post4 = PostData(userName: "Binnie Saini", post: "Shopping Spree", postImage: "image4.png", userImage: "user4.png")
        
        userPost.append(post1)
        userPost.append(post2)
        userPost.append(post3)
        userPost.append(post4)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCustomCell = (tableView.dequeueReusableCell(withIdentifier: tableIdentifier) as? MyCustomCell)!
        let index = userPost[indexPath.row]
       
        let imageName = UIImage(named: "\(index.myPost["PostImage"]!)")
        cell.postImage.image = imageName
        
        let userImage = UIImage(named: "\(index.myPost["UserImage"]!)")
        cell.userImage.image = userImage
        
        cell.userNameLbl.text = "\(index.myPost["UserName"]!)"
        cell.postLbl.text = "\(index.myPost["Post"]!)"
        
        return cell
    }
    
}
