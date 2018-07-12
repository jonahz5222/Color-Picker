//
//  Color.swift
//  Color Picker
//
//  Created by Jonah Zukosky on 7/11/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import Foundation
import UIKit

class Color {
    init(stringColor: String, colorColor: UIColor) {
        self.stringColor = stringColor
        self.colorColor = colorColor
    }
    let colorColor: UIColor
    let stringColor: String
}
