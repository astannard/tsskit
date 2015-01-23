//
//  TaskModel.swift
//  TsskIt
//
//  Created by Andy Stannard on 23/01/2015.
//  Copyright (c) 2015 inni Accounts. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
