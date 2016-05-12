//
//  ViewController.swift
//  Aura
//
//  Created by Maheen Khalid on 5/9/16.
//  Copyright © 2016 Maheen Khalid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tasksTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Trasnparent Navigation Bar
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true

        self.navigationController?.navigationBar.barTintColor = ListItemBackgroundColor
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        registerCells()
    }
    
    func registerCells() {
        tasksTableView.registerNib(UINib(nibName: "TasksTableViewCell", bundle: nil), forCellReuseIdentifier: "TasksTableViewCell")
        
        tasksTableView.delegate = self
        tasksTableView.dataSource = self
        
        tasksTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        tasksTableView.backgroundColor = UIColor.clearColor()
        
        tasksTableView.showsVerticalScrollIndicator = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TasksTableViewCell") as! TasksTableViewCell
        
        cell.backgroundColor = UIColor.clearColor()
        
        cell.card.backgroundColor = CardBackgroundColor
        
        cell.card.layer.cornerRadius = 5.0
        
        return cell
    }


    @IBAction func createTask(sender: AnyObject) {
        
        let action = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        action.addAction(UIAlertAction(title: "List", style: UIAlertActionStyle.Default, handler: { (listAction) in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationViewController = storyboard.instantiateViewControllerWithIdentifier("ListViewController") as! ListViewController
            
            self.navigationController?.showViewController(destinationViewController, sender: nil)
            
        }))
        
        action.addAction(UIAlertAction(title: "Task", style: UIAlertActionStyle.Default, handler: { (taskAction) in
            //
        }))
        
        action.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: { (cancel) in
            //
        }))
        
        self.presentViewController(action, animated: true, completion: nil)
        
    }
}

