//
//  ViewController.swift
//  TsskIt
//
//  Created by Andy Stannard on 16/01/2015.
//  Copyright (c) 2015 inni Accounts. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    var taskArray:[TaskModel] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1 = TaskModel(task: "Study French", subTask: "Verbs", date: "01/02/2015")
        let task2 = TaskModel(task: "Eat dinner", subTask: "burgers", date: "01/02/2015")

        taskArray = [task1,task2,TaskModel(task: "Workout", subTask: "gym", date: "02/02/2015")]
        
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func   prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showTaskDetail"{
            let detailVC: TaskDetailViewController = segue.destinationViewController as TaskDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow()
            let thisTask = taskArray[indexPath!.row]
            detailVC.detailTaskModel = thisTask
        }
    }
    
    //Data source

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        println(indexPath.row)
        
        let currenttask:TaskModel = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        cell.taskLabel.text = currenttask.task
        cell.descriptionLabel.text = currenttask.subTask
        cell.taskDateLabel.text = currenttask.date
        
        return cell
    }
    

    
    
    //Delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("index path \(indexPath.row)")
        
        performSegueWithIdentifier("showTaskDetail", sender: self)
    }

}

