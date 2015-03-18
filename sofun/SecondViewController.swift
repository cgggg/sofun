//
//  SecondViewController.swift
//  sofun
//
//  Created by 陈刚 on 15/3/4.
//  Copyright (c) 2015年 cg. All rights reserved.
//搜索页面

import UIKit

class SecondViewController: UIViewController,UISearchResultsUpdating,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var caipins = CaipinArray().caipinArray
  
    var searchResults = [caipin]()
    var searchController:UISearchController!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
       searchController = UISearchController(searchResultsController: nil)
       

        searchController.searchBar.sizeToFit()
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        self.view.addSubview(searchController.searchBar)
        
        searchController.searchBar.placeholder = "请输入菜品或餐馆"
        
        tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return searchResults.count
        
    }
    
      func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identiString = "sCell" //代码复用
        let cell = tableView.dequeueReusableCellWithIdentifier(identiString , forIndexPath: indexPath) as searchTableViewCell
       
        var caipin =
        caipins[indexPath.row]
        if searchResults.count != 0
        {
            caipin = searchResults[indexPath.row]
        }
        
        cell.nameLabel.text = caipin.name
        cell.scoreLabel.text = "评分:" + "\(caipin.score)"
        cell.restLabel.text = "餐馆:" + caipin.rest
        cell.priceLabel.text = "价格:" + "\(caipin.price)"
        cell.caipinImageView.image = UIImage(named: caipin.image)
        
        if caipin.collected == true {
            cell.shoucangImageView.image = UIImage(named: "heart_fill_28")
        }
        
        return cell
    }

    func filterContentForSearchText(searchText: String) {
        
        searchResults = caipins.filter({ ( caipin: caipin) -> Bool in
            
            let nameMatch = caipin.name.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            let locationMatch = caipin.rest.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            
            return nameMatch != nil || locationMatch != nil
            
        })
        
    }
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchText = searchController.searchBar.text
        
        filterContentForSearchText(searchText)
        
        tableView.reloadData()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender is UITableViewCell
        {
            var cell = sender as UITableViewCell
            var indexPath = self.tableView.indexPathForCell(cell)
            var model = self.searchResults[indexPath!.row]
            var vc = segue.destinationViewController as CaipinDetailViewController
            vc.tempCaipin = [model]
            vc.navigationItem.title = model.name
            
        }
    }
}

