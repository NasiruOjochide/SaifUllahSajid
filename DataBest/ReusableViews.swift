//
//  ReusableViews.swift
//  DataBest
//
//  Created by Danjuma Nasiru on 31/05/2023.
//

import Foundation
import SwiftUI

struct Line : Shape{
    func path(in rect: CGRect) -> Path{
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.width, y: rect.midY))
        
        return path
    }
}
