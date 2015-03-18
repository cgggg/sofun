//
//  caipin.swift
//  sofun
//
//  Created by 陈刚 on 15/3/7.
//  Copyright (c) 2015年 cg. All rights reserved.
//菜品类

import UIKit

class caipin: NSObject {
    var name:String = ""
    var rest:String = ""
    var price:Float = 0
    var score:Float = 0
    var image:String = ""
    var collected:Bool = false
    var taste:String = ""
    var nutrition:String = ""
    init(name:String,rest:String,price:Float,score:Float,image:String,collected:Bool,taste:String,nutrition:String){
    self.name = name
    self.rest = rest
    self.price = price
    self.score = score
    self.image = image
    self.collected = collected
    self.taste = taste
    self.nutrition = nutrition
    }
}
