//
//  CaipinDetailViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/9.
//  Copyright (c) 2015年 cg. All rights reserved.
//菜品详细信息

import UIKit
import MessageUI

class CaipinDetailViewController: UIViewController,MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var collectText: UIButton!
    @IBAction func share(sender: UIButton) {
        let shareView = ShareViewController()
        self.presentViewController(shareView, animated: true, completion: nil)
    }
    @IBAction func message(sender: UIButton) {
        if self.canSendText(){
        let messageVC = self.configuredMessageComposeViewController()
          presentViewController(messageVC, animated: true, completion: nil)
        } else {
        let errorAlert = UIAlertView(title: "不能发送", message: "你的设备没有短信功能", delegate: self, cancelButtonTitle: "取消")
        }

        
    }
    @IBAction func collect(sender: UIButton) {
        if caipinArray[0].collected == true{
            collectText.setTitle("添加收藏", forState: .Normal)
            caipinArray[0].collected = false
          collectImage.image = UIImage(named: "shape_collect_no")
        } else {
            collectText.setTitle("取消收藏", forState: .Normal)
            caipinArray[0].collected = true
            collectImage.image = UIImage(named: "shape_collect_yes")
        }
    }
    @IBAction func comment(sender: UIButton) {
    }
    @IBOutlet weak var collectImage: UIImageView!
    @IBOutlet weak var nutrition: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var taste: UILabel!
    @IBOutlet weak var score: UILabel!
    
    var tempCaipin = [caipin]()
    var caipinArray:[caipin]{
        get{
            return tempCaipin
        }
    }
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var rest: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        image.image = UIImage(named: caipinArray[0].image)
        rest.text = caipinArray[0].rest
        price.text = "单价：\(caipinArray[0].price)"
        nutrition.text = "营养：\(caipinArray[0].nutrition)"
        taste.text = "口味：\(caipinArray[0].taste)"
        score.text = "评分：\(caipinArray[0].score)"
        if caipinArray[0].collected == true{
        collectImage.image = UIImage(named: "shape_collect_yes")
        collectText.setTitle("取消收藏", forState: .Normal)
                } else {
         collectImage.image = UIImage(named: "shape_collect_no")
            collectText.setTitle("添加收藏", forState: .Normal)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func canSendText() -> Bool{
    return MFMessageComposeViewController.canSendText()
    }//用来指示一条消息能否从用户处发送
    func configuredMessageComposeViewController() -> MFMessageComposeViewController{
    let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self
        messageComposeVC.body = "HI! \(caipinArray[0].rest) 的 \(caipinArray[0].name) 味道很不错，邀你共享 -来自SoFun的邀请"
        return messageComposeVC
        
    }
     func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}
