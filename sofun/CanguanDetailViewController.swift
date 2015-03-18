//
//  ViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/9.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import UIKit

class CanguanDetailViewController: UIViewController {

    @IBAction func phoneBtn(sender:UIButton){
        var url1 = NSURL(string: "tel://"+canguanArray[0].tel)
        UIApplication.sharedApplication().openURL(url1!)
    }
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var tel: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var describe: UITextView!
    @IBOutlet weak var image: UIImageView!

    var tempCanguan = [canguan]()
    var canguanArray:[canguan]{
        get{
            return tempCanguan
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       image.layer.backgroundColor = UIColor.orangeColor().CGColor
        image.layer.shadowColor = UIColor.blackColor().CGColor
        image.layer.shadowOffset = CGSizeMake(0, 0)
        image.layer.shadowOpacity = 0.5
        image.layer.shadowRadius = 10.0
        
        image.image = UIImage(named: canguanArray[0].image)
        tel.text = "电话：\(canguanArray[0].tel)"
        location.text = "地址：\(canguanArray[0].location)"
        describe.text = "简介：\(canguanArray[0].describe)"
        score.text = "评分：\(canguanArray[0].score)"
//        let fengcaiBtn = SFlatButton(frame: CGRectMake(220, 480, 80, 30), sfButtonType: SFlatButton.SFlatButtonType.SFBWarning)
//        fengcaiBtn.setTitle("餐馆风采", forState: UIControlState.Normal)
//        self.view.addSubview(fengcaiBtn)
        // Do any additional setup after loading the view.
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showMap" {
            let destinationController = segue.destinationViewController as MapViewController
            
            destinationController.restaurant = canguanArray[0]
        }
        
    }




}
