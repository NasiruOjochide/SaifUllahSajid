//
//  DateExtension.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 02/06/2023.
//

import Foundation

extension Date {
    static func fromComp(year : Int, month: Int, day: Int) -> Date {
        var components =  DateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        let date = Calendar.current.date(from: components) ?? Date.now
        return date
    }
}
