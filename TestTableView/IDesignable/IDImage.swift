//
//  IDImage.swift
//  TestTableView
//
//  Created by Admin on 17.10.2018.
//  Copyright © 2018 ANK. All rights reserved.
//

import UIKit

@IBDesignable
class IDImage: UIImageView {
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
