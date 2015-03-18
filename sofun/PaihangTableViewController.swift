//
//  PaihangTableViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/5.
//  Copyright (c) 2015年 cg. All rights reserved.
//菜品排行

import UIKit

class PaihangTableViewController: UITableViewController,UITableViewDataSource, UITableViewDelegate {
    @IBAction func unwindToList(segue:UIStoryboardSegue){
        
    }
    var caipinArray = CaipinArray().caipinArray
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return caipinArray.count
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identiString = "Cell" //代码复用
        let cell = tableView.dequeueReusableCellWithIdentifier(identiString , forIndexPath: indexPath) as CustomTableViewCell
        var caipin = caipinArray[indexPath.row]
        cell.nameLabel.text = caipin.name
        cell.scoreLabel.text = "评分:" + "\(caipin.score)"
        cell.restLabel.text = "餐馆:" + caipin.rest
        cell.priceLabel.text = "价格:" + "\(caipin.price)"
        cell.numberLabel.text = "\(indexPath.row + 1)"
        cell.thumbnailImageView.image = UIImage(named: caipin.image)
        if indexPath.row == 0
        {
            cell.paihangImageView.image = UIImage(named: "crown")
        } else if indexPath.row == 1 {
            cell.paihangImageView.image = UIImage(named: "crown-silver")
        } else if indexPath.row == 2{
        cell.paihangImageView.image = UIImage(named: "crown-bronze")
        } else {
        cell.paihangImageView.image = UIImage(named: "thumb_up")
        }
        
        if caipin.collected == true {
        cell.shoucangImageView.image = UIImage(named: "heart_fill_28")
        }

        return cell
    }
//    override func prefersStatusBarHidden() -> Bool { //隐藏上边栏中的电量、信号等信息
//        return true
//   }
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//
////        var message = caipinArray[indexPath.row].name
////        let alertView = UIAlertView(title: nil, message: message, delegate: nil, cancelButtonTitle: "Cancle")
////        alertView.show()
//        var detail = CanguanDetailViewController()
//        self.navigationController?.pushViewController(detail, animated: true)
//      //  detail.imageName = caipinArray[indexPath.row].image
//      
//    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender is UITableViewCell
        {
        var cell = sender as UITableViewCell
        var indexPath = self.tableView.indexPathForCell(cell)
        var model = self.caipinArray[indexPath!.row]
        var vc = segue.destinationViewController as CaipinDetailViewController
            vc.tempCaipin = [model]
            vc.navigationItem.title = model.name
            
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
 
    
    
    
}

