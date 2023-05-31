//
//  Event.swift
//  CorporateWellness
//
//  Created by Danjuma Nasiru on 29/05/2023.
//

import Foundation

struct Event : Identifiable{
    let id = UUID()
    var title : String
    var details : String
    var attendees : [String]
    var startTime : Date
    var stopTime : Date
}
