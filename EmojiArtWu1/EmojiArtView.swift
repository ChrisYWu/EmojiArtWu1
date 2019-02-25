//
//  EmojiArtView.swift
//  EmojiArtWu1
//
//  Created by Chris Wu on 2/22/19.
//  Copyright © 2019 KDP. All rights reserved.
//

import UIKit

class EmojiArtView: UIView
{
    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }

}
