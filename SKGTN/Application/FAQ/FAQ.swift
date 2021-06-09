//
//  FAQ.swift
//  SKGTN
//
//  Created by Minh Tien on 6/9/21.
//

import Foundation

struct FAQ :Decodable {
    
    struct faqList : Decodable {
        let question : String
        let answer : String
    }
    
    let FAQ : [faqList]
}
