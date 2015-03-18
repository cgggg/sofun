//
//  ShareViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/12.
//  Copyright (c) 2015年 cg. All rights reserved.
//分享界面

import UIKit

class ShareViewController: UIViewController {
   
    var faceBtn: UIButton!
    var twitterBtn: UIButton!
    var emailBtn: UIButton!
    var messageBtn: UIButton!
    var imageView: UIImageView!
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            imageView = UIImageView(frame: self.view.bounds)
            imageView.image = UIImage(named: "background5")
            self.view.addSubview(imageView)
            var blur = UIBlurEffect(style: .Dark)//模糊
            var blurView = UIVisualEffectView(effect: blur)//模糊
            blurView.frame = self.view.bounds//模糊
            imageView.addSubview(blurView)//模糊
        
        self.view.backgroundColor = UIColor.whiteColor()
        let buttonWidth:CGFloat = 60
        let buttonY:CGFloat = 200 //三个按钮相同的规格
            //四个按钮
         faceBtn = UIButton(frame: CGRectMake(100, buttonY, buttonWidth, buttonWidth))
        faceBtn.setBackgroundImage(UIImage(named: "facebook"), forState: .Normal)
            faceBtn.backgroundColor = UIColor(red: 35.0/255.0, green: 51.0/255.0, blue: 115.0/255.0, alpha: 1.0)
        self.view.addSubview(faceBtn)
        
         twitterBtn = UIButton(frame: CGRectMake(160, buttonY, buttonWidth, buttonWidth))
        twitterBtn.setBackgroundImage(UIImage(named: "twitter"), forState: .Normal)
            twitterBtn.backgroundColor = UIColor(red: 28.0/255.0, green: 133.0/255.0, blue: 127.0/255.0, alpha: 1.0)
        self.view.addSubview(twitterBtn)
        
         messageBtn = UIButton(frame: CGRectMake(100, 260, buttonWidth, buttonWidth))
        messageBtn.setBackgroundImage(UIImage(named: "message"), forState: .Normal)
        messageBtn.backgroundColor = UIColor(red: 195.0/255.0, green: 30.0/255.0, blue: 28.0/255.0, alpha: 1.0)
        self.view.addSubview(messageBtn)
        
         emailBtn = UIButton(frame: CGRectMake(160, 260, buttonWidth, buttonWidth))
        emailBtn.setBackgroundImage(UIImage(named: "email"), forState: .Normal)
        emailBtn.backgroundColor = UIColor(red: 247.0/255.0, green: 106.0/255.0, blue: 9.0/255.0, alpha: 1.0)
        self.view.addSubview(emailBtn)
        let upTranslate = CGAffineTransformMakeTranslation(0, -500)
        let downTranslate = CGAffineTransformMakeTranslation(0, 500)
        faceBtn.transform = downTranslate
        emailBtn.transform = upTranslate
        twitterBtn.transform = upTranslate
        messageBtn.transform = downTranslate
            
            //closeButton
            var closeButton = UIButton(frame: CGRectMake(280, 30, 30, 30))
            closeButton.setBackgroundImage(UIImage(named: "close"), forState: .Normal)
            closeButton.layer.cornerRadius = 15
            closeButton.layer.masksToBounds = true
            closeButton.addTarget(self, action: "clickCloseBtn:", forControlEvents: .TouchUpInside)
            self.view.addSubview(closeButton)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    }
    func clickCloseBtn(sender:UIButton){
    self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: nil, animations: { let translate = CGAffineTransformMakeTranslation(0, 0)
            self.faceBtn.transform = translate
            self.emailBtn.transform = translate
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.7, options: nil, animations: { let translate = CGAffineTransformMakeTranslation(0, 0)
            self.twitterBtn.transform = translate
            self.messageBtn.transform = translate
            }, completion: nil)
    }

}


    
