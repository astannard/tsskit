//
//  Date.swift
//  TsskIt
//
//  Created by Andy Stannard on 20/01/2015.
//  Copyright (c) 2015 inni Accounts. All rights reserved.
//

import Foundation

class Date{
    
    class func from (#year:Int, month:Int, day: Int) -> NSDate {
        
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalender = NSCalendar(identifier: NSGregorianCalendar)
        var date = gregorianCalender?.dateFromComponents(components)
        return date!
    }
    
    class func toString (#date: NSDate) -> String {
        
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd MM yyyy"
        let dateString = formatter.stringFromDate(date)
        return dateString
    }
}