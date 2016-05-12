//
//  ListViewController.swift
//  Aura
//
//  Created by Maheen Khalid on 5/11/16.
//  Copyright © 2016 Maheen Khalid. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cellCount: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()
    }
    
    func registerCells() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = UIColor.clearColor()
        
        tableView.registerNib(UINib(nibName: "TitleTableViewCell", bundle: nil), forCellReuseIdentifier: "TitleTableViewCell")
        
        tableView.registerNib(UINib(nibName: "AddItemTableViewCell", bundle: nil), forCellReuseIdentifier: "AddItemTableViewCell")
        
        tableView.registerNib(UINib(nibName: "ListItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ListItemTableViewCell")
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("TitleTableViewCell") as! TitleTableViewCell
            
            cell.backgroundColor = UIColor.clearColor()
            cell.carddView.backgroundColor = CardBackgroundColor
            
            cell.carddView.layer.cornerRadius = 5.0
            
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            
            return cell
        } else if indexPath.row == (cellCount - 1) {
            let cell = tableView.dequeueReusableCellWithIdentifier("AddItemTableViewCell") as! AddItemTableViewCell
            
            cell.backgroundColor = UIColor.clearColor()
            
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            
            return cell
        } else {
            // item cell
            let cell = tableView.dequeueReusableCellWithIdentifier("ListItemTableViewCell") as! ListItemTableViewCell
            
            cell.backgroundColor = UIColor.clearColor()
            cell.cardView.backgroundColor = ListItemBackgroundColor
            
            cell.cardView.layer.cornerRadius = 5.0
            
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == (cellCount - 1) {
            cellCount = cellCount + 1
            
            self.tableView.reloadData()
        }
        
    }
}
