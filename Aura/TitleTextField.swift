//
//  TitleTextField.swift
//  Aura
//
//  Created by Maheen Khalid on 5/11/16.
//  Copyright © 2016 Maheen Khalid. All rights reserved.
//

import UIKit

class TitleTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupTextField() {
        self.backgroundColor = UIColor.clearColor()
        self.borderStyle = UITextBorderStyle.None
        
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        
        
    }

    

}
