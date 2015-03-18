//
//  TopicViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/16.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {
   
    let pageWidth = 320
    let pageHeight = 1000
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //scrollView的初始化
        var scrollView = UIScrollView()
        scrollView.frame = self.view.bounds
        
        scrollView.contentSize=CGSizeMake(CGFloat(pageWidth), CGFloat(pageHeight))
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.scrollsToTop = true
        var label1 = UILabel(frame: CGRectMake(50, 70, 240, 30))
        label1.text = "记忆中的上汤娃娃菜"
        label1.textColor = UIColor.orangeColor()
        label1.font = UIFont.systemFontOfSize(23)
        scrollView.addSubview(label1)
        var label2 = UILabel(frame: CGRectMake(90, 100, 240, 20))
        label2.text = "情怀分类：亲子"
        label2.textColor = UIColor.blackColor()
        label2.font = UIFont.systemFontOfSize(17)
        scrollView.addSubview(label2)
        var image1 = UIImage(named: "上汤娃娃菜")
        var imageView1 = UIImageView(image: image1)
        imageView1.frame = CGRect(x: 30, y: 130, width:260, height: 230)
        scrollView.addSubview(imageView1)
        var textView1 = UITextView(frame: CGRectMake(20, 370, 290, 290))
        textView1.text = "亲爱的sofun用户，今天为您带来的菜品推荐是上汤娃娃菜。天气转凉，有没有一道菜让你暖心暖胃？幼时的我们常常挑食，却总是不能拒绝皮蛋和火腿的美味，娃娃菜的营养也恰到好处，在父母关爱的眼神中喝光碗中的高汤，窗外寒风簌簌，窗内是浓的化不开的亲情。时光飞逝，随着我们的成长父母也老了，当他们终于被我们劝成了等开饭的那个人的时候，当你亲自掌勺端出这道菜的时候，是不是想起了童年的餐桌？"
        scrollView.addSubview(textView1)
        var label3 = UILabel(frame: CGRectMake(30, 510, 260, 20))
        label3.text = "情怀推荐书籍：城南旧事 作者：林海音"
        label3.textColor = UIColor.orangeColor()
        label3.font = UIFont.systemFontOfSize(15)
        scrollView.addSubview(label3)
        var image2 = UIImage(named: "城南旧事")
        var imageView2 = UIImageView(image: image2)
        imageView2.frame = CGRect(x: 110, y: 550, width:100, height: 140)
        scrollView.addSubview(imageView2)
        var textView2 = UITextView(frame: CGRectMake(20, 690, 290, 60))
        textView2.text = "推荐理由：不同的时代，相似的童年，除了美食，跟着林海音回到童年去寻找记忆中的小时候"
        scrollView.addSubview(textView2)
        var label4 = UILabel(frame: CGRectMake(30, 740, 260, 20))
        label4.text = "情怀推荐歌曲：时间都去哪了-王铮亮"
        label4.textColor = UIColor.orangeColor()
        label4.font = UIFont.systemFontOfSize(15)
        scrollView.addSubview(label4)
        var image3 = UIImage(named: "时间都去哪了")
        var imageView3 = UIImageView(image: image3)
        imageView3.frame = CGRect(x: 60, y: 770, width:200, height: 140)
        scrollView.addSubview(imageView3)
        
        var textView3 = UITextView(frame: CGRectMake(20, 900, 290, 60))
        textView3.text = "推荐理由：半生藏了许多话，藏进了白发。王铮亮温暖的声线是否勾起你对父母的思念"
        scrollView.addSubview(textView3)
        //添加子页面
//        for i in 0..numOfPages{
//            var myViewController = MyViewController(number:(i+1))
//            myViewController.view.frame = CGRectMake(CGFloat(pageWidth*i),
//                CGFloat(0), CGFloat(pageWidth), CGFloat(pageHeight))
//            scrollView.addSubview(myViewController.view)
//        }
        self.view.addSubview(scrollView)
    }
}
