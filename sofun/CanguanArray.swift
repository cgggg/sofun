//
//  CanguanArray.swift
//  sofun
//
//  Created by 陈刚 on 15/3/8.
//  Copyright (c) 2015年 cg. All rights reserved.
//餐馆数据模型

import UIKit

class CanguanArray: NSObject {
    var temArray = [canguan]() //存储属性
    var canguanArray:[canguan]{ //计算属性
        get{
        return temArray
        }
    }
    override init(){
        temArray = [
            canguan(name: "蜀渝署二", location: "西安高新区光华路中段", tel: "(029)88204488", image: "蜀渝署二", collected: true,describe:"环境不错，上菜速度快，位于西电东南门和西南门之间，川菜馆，人均20-40元",score: 4.7),
            canguan(name: "大碗饭", location: "西安光华路二十所车站小区斜对面", tel: "(029)88204488", image: "大碗饭", collected: false,describe:"主要面向学生党，生息很红火，盖饭为主，人均10-15元",score: 4.5),
            canguan(name: "芳芳餐厅", location: "西安光华路(白沙路口)", tel: "(029)88204488", image: "芳芳餐厅", collected: true,describe:"位于光华路十字，紧邻阿慧餐馆，属于比较实惠的餐馆，各色家常菜，人均20-30元",score:4.2),
            canguan(name: "阿慧餐馆", location: "西安高新区光华路166号", tel: "(029)88214169", image: "阿慧餐馆", collected: false,describe: "位于光华路十字，紧邻芳芳餐厅，属于比较实惠的餐馆，人均20-30元",score:4.1),
            canguan(name: "酱府老碗面", location: "西安高新区光华路路南", tel: "(029)63393058", image: "酱府老碗面", collected: true,describe: "位于光华路，主营面食，也有自己做的酱肉、凉菜拼盘，喜欢面食的朋友不要错过，人均13-25元",score: 4.0)
        
        
        ]
    }
}
