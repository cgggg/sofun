//
//  DataArray.swift
//  sofun
//
//  Created by 陈刚 on 15/3/7.
//  Copyright (c) 2015年 cg. All rights reserved.
//菜品数据模型

import UIKit

class CaipinArray: NSObject {
   var tempCaipin = [caipin]()
    var caipinArray:[caipin]{
        get{
        return tempCaipin
        }
    }
    override init(){
    tempCaipin = [
        caipin(name: "芳香排骨",rest: "芳芳餐厅",price: 25,score: 4.8,image: "芳香排骨",collected: true,taste:"咸",nutrition:"蛋白质"),
        caipin(name: "红烧肉",rest: "阿慧餐馆",price: 22,score: 4.5,image: "红烧肉",collected: true,taste:"咸",nutrition:"脂类"),
        caipin(name: "红烧狮子头",rest: "芳芳餐厅",price: 18,score: 4.3,image: "红烧狮子头",collected: false,taste:"咸",nutrition:"蛋白质"),
        caipin(name: "梅菜扣肉",rest: "蜀渝署二",price: 25,score: 4.2,image: "梅菜扣肉",collected: true,taste:"甜",nutrition:"脂类"),
        caipin(name: "蒜蓉荷兰豆",rest: "大碗饭",price: 14,score: 4.0,image: "蒜蓉荷兰豆",collected: false,taste:"淡",nutrition:"维生素"),
        caipin(name: "铁板腰花",rest: "酱府老碗面",price: 32,score: 3.9,image: "铁板腰花",collected: false,taste:"辣",nutrition:"蛋白质")
        ]
    }
    
}
