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
    
    
    var taskArray:[Dictionary<String,String>] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let task1:Dictionary<String,String> = ["task":"Study French","subtask":"Verbs","date":"01/02/2015"]
        let task2:Dictionary<String,String> = ["task":"East Dinner","subtask":"East burgers","date":"02/02/2015"]
        let task3:Dictionary<String,String>= ["task":"Gym","subtask":"leg day","date":"03/02/2015"]
        
        taskArray = [task1,task2,task3]
        
        println(task1["task"])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Data source

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        println(indexPath.row)
        
        let taskDict:Dictionary = taskArray[indexPath.row]
        
        var cell: TaskCell = tableView.dequeueReusableCellWithIdentifier("myCell") as TaskCell
        cell.taskLabel.text = taskDict["task"]
        cell.descriptionLabel.text = taskDict["subtask"]
        cell.taskDateLabel.text = taskDict["date"]
        
        return cell
    }
    

    
    
    //Delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}

