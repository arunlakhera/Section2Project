//
//  PostData.swift
//  Section2-Project
//
//  Created by Arun Lakhera on 12/28/16.
//  Copyright © 2016 Arun Lakhera. All rights reserved.
//

import Foundation

class PostData{
    
    var myPost = [String: String]()
    
    init(userName: String, post: String, postImage: String, userImage: String) {
        myPost["UserName"] =  userName
        myPost["Post"] = post
        myPost["PostImage"] = postImage
        myPost["UserImage"] = userImage
    }
    
}
