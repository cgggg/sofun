//
//  canguan.swift
//  sofun
//
//  Created by 陈刚 on 15/3/8.
//  Copyright (c) 2015年 cg. All rights reserved.
//餐馆类

import UIKit

class canguan: NSObject {
   
    var name:String = ""
    var location:String = ""
    var tel:String = ""
    var image:String = ""
    var collected:Bool = false
    var describe:String = ""
    var score:Float = 0
    init(name:String,location:String,tel:String,image:String,collected:Bool,describe:String,score:Float){
        self.name = name
        self.location = location
        self.tel = tel
        self.image = image
        self.collected = collected
        self.describe = describe
        self.score = score
    }
}
