//
//  Employee.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 01/06/2023.
//

import Foundation

struct Employee : Identifiable{
    let id = UUID()
    var name : String
    var title : String
    var designation : String
    var image : String
    var openRate : Decimal
}
