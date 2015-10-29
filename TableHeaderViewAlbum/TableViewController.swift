//
//  TableViewController.swift
//  TableHeaderViewAlbum
//
//  Created by Nirvana on 10/28/15.
//  Copyright © 2015 NSNirvana. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        //你想要展示的tableHeaderView
        let imgView = UIImageView(frame: CGRectMake(0, 0, CGRectGetWidth(self.tableView.frame), 64))
        imgView.contentMode = .ScaleAspectFill
        imgView.image = UIImage(named: "header")
        
        //若含有navigationController
        //一、取消ScrollViewInsets自动调整
        self.automaticallyAdjustsScrollViewInsets = false
        //二、隐藏NavBar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        //类型零
        //let headerView = NirTableHeaderView(subview: imgView, andType: 0)
        
        //类型一
        //let headerView = NirTableHeaderView(subview: imgView, andType: 1)
        
        //类型二
        //let headerView = NirTableHeaderView(subview: imgView, andType: 2)
        
        //类型三
        //let headerView = NirTableHeaderView(subview: imgView, andType: 3)
        //headerView.tableView = self.tableView
        //headerView.maximumOffsetY = -90
        
        //类型四
        let headerView = NirTableHeaderView(subview: imgView, andType: 4)
        
        self.tableView.tableHeaderView = headerView
        self.tableView.delegate = self
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Table view delegate
    
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        let headerView = self.tableView.tableHeaderView as! NirTableHeaderView
        headerView.layoutHeaderViewForScrollViewOffset(scrollView.contentOffset)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nirCell", forIndexPath: indexPath)

        cell.textLabel?.text = "Just Try"

        return cell
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

extension UINavigationController {
    override public func childViewControllerForStatusBarStyle() -> UIViewController? {
        return self.topViewController
    }
}
