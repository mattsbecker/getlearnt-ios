//
//  GLNQuizImageView.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/19/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import UIKit

@IBDesignable
class GLNQuizImageView: UIView {

    @IBInspectable var imageView: UIImageView? {
        willSet {
            self.imageView?.image = nil
            self.imageView?.removeFromSuperview()
            self.imageView = nil
        }
        didSet {
            imageView?.frame = CGRect.init(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
            self.addSubview(imageView!)
            imageView?.isHidden = false
        }
    }
        
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            imageView?.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            imageView?.layer.cornerRadius = cornerRadius
            imageView?.layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            imageView?.layer.borderColor = borderColor?.cgColor
        }
    }
}
