//
//  canguanTableViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/7.
//  Copyright (c) 2015年 cg. All rights reserved.
//
//排行餐馆控制器
import UIKit

class canguanTableViewController: UITableViewController ,UITableViewDataSource, UITableViewDelegate{

    var canguanArray = CanguanArray().canguanArray
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return canguanArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identiString = "Ccell" //代码复用
        let cell = tableView.dequeueReusableCellWithIdentifier(identiString , forIndexPath: indexPath) as canguanTableViewCell
        var canguan = canguanArray[indexPath.row]
        cell.nameLabel.text = canguan.name
        cell.scoreLabel.text = "评分:" + "\(canguan.score)"
        cell.numberLabel.text = "\(indexPath.row + 1)"
        cell.canguanImageView.image = UIImage(named: canguan.image)
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
        
        if canguan.collected == true {
            cell.collectedImageView.image = UIImage(named: "heart_fill_28")
        }
        
        return cell
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender is UITableViewCell
        {
            var cell = sender as UITableViewCell
            var indexPath = self.tableView.indexPathForCell(cell)
            var model = self.canguanArray[indexPath!.row]
            var vc = segue.destinationViewController as CanguanDetailViewController
            vc.tempCanguan = [model]
            vc.navigationItem.title = model.name
            
        }
    }

}
