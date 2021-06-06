//
//  Setting.swift
//  SKGTN
//
//  Created by Minh Tien on 6/6/21.
//

import Foundation
import UIKit
class Setting : UIViewController {
    public var name : String
    public var icon : String
    public var path : String
   
    
    init(name : String , icon : String, path : String ) {
        self.name = name
        self.icon = icon
        self.path = path
       
        super.init(nibName: nil, bundle: nil)
    }
    @available(*, unavailable)
        required init?(coder: NSCoder) {
            fatalError("This class does not support NSCoder")
        }
}

