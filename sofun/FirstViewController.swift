//
//  FirstViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/4.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func yaoyaoBtn(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 : showSelectPicker(sender)
        case 1 : showDinnerPartyPicker()
        default:break
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIApplication.sharedApplication().applicationSupportsShakeToEdit = true
        self.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showSelectPicker(sender:AnyObject){
//    var popover = UIPopoverController(contentViewController: self)
//        popover.setPopoverContentSize(CGSizeMake(400, 400), animated: true)
//        popover.delegate = self
//        popover.presentPopoverFromBarButtonItem(self.navigationItem.rightBarButtonItem!, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        var alertController = UIAlertController(title: "选择摇摇", message: nil, preferredStyle: .ActionSheet)//新写法
        var priceAction = UIAlertAction(title: "价格", style: .Default, handler: nil)
        alertController.addAction(priceAction)
        var scoreAction = UIAlertAction(title: "评分", style: .Default, handler: nil)
        alertController.addAction(scoreAction)
        var nutritionAction = UIAlertAction(title: "营养", style: .Default, handler: nil)
        alertController.addAction(nutritionAction)
        var tasteAction = UIAlertAction(title: "口味", style: .Default, handler: nil)
        alertController.addAction(tasteAction)
        var completeAction = UIAlertAction(title: "完成", style: .Destructive, handler: nil)
        alertController.addAction(completeAction)
        var cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)

        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    func showDinnerPartyPicker(){
    var alertController = UIAlertController(title: "饭团摇摇", message: nil, preferredStyle: .ActionSheet)//新写法
        var restaurantAction = UIAlertAction(title: "餐馆", style: .Default, handler: nil)
        alertController.addAction(restaurantAction)
        var peopleAction = UIAlertAction(title: "人数", style: .Default, handler: nil)
        alertController.addAction(peopleAction)
        var priceAction = UIAlertAction(title: "消费上限", style: .Default, handler: nil)
        alertController.addAction(priceAction)
        var completeAction = UIAlertAction(title: "完成", style: .Destructive, handler: nil)
        alertController.addAction(completeAction)
        var cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == UIEventSubtype.MotionShake
        {
        var alertController1 = UIAlertController(title: "恭喜你，成功了！", message: nil, preferredStyle: .Alert)
            var cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            alertController1.addAction(cancelAction)
              self.presentViewController(alertController1, animated: true, completion: nil)
        }
    }
    }

