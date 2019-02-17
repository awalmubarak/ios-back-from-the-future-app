//
//  Utils.swift
//  back to the future
//
//  Created by Mubarak Awal on 17/02/2019.
//  Copyright © 2019 Mubarak Awal. All rights reserved.
//

import Foundation

class Utils {
    
    func getCurrentYear()->String{
        let date = Date()
        let calender  = Calendar.current
        let year = calender.component(.year, from: date)
        return String(year)
    }
    
    func getStringAtIndex(year: String, position:Int) -> String{
        let index = year.index(year.startIndex, offsetBy: position)
        return String(year[index])
    }
    
    func getCurrentTime() -> String{
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        let timeString = formatter.string(from: date)
        return timeString
        
    }
}
