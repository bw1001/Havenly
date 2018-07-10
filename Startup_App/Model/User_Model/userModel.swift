//
//  userModel.swift
//  Startup_App
//
//  Created by Clayton kingsbury on 7/9/18.
//  Copyright © 2018 Clayton kingsbury. All rights reserved.
//

import Foundation
class userModel {
    static let user = userModel()
    var username: String
    var password: String
    private init(){
        username = "test_fail"
        password = "test_fail"
    }
    public func setUsername(username: String){
        self.username = username
    }
    public func setPassword(password: String){
        self.password = password
    }
}
// access through userModel.user ...


