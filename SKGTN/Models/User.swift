//
//  User.swift
//  SKGTN
//
//  Created by Minh Tien on 6/3/21.
//

import Foundation
class User {
    public var name :String!
    public var phone :String!
    public var birthday : String!
    public var cmnd : String!
    public var email : String!
    public var address : String!
    
    init(name :String!, phone :String!,birthday : String!,cmnd : String!,email : String!,address : String!) {
        self.name = name
        self.phone = phone
        self.birthday = birthday
        self.cmnd = cmnd
        self.email = email
        self.address = address
    }
}
