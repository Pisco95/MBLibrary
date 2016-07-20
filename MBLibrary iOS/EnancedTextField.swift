//
//  EnancedTextField.swift
//  MBLibrary
//
//  Created by Marco Boschi on 22/07/15.
//  Copyright © 2015 Marco Boschi. All rights reserved.
//

import UIKit

public class EnancedTextField: UITextField {

	public var isEditable: Bool {
		didSet {
			isUserInteractionEnabled = isEditable
			if isEditable {
				borderStyle = UITextBorderStyle.roundedRect
				backgroundColor = UIColor.white()
			} else {
				borderStyle = UITextBorderStyle.none
				backgroundColor = nil
			}
		}
	}
	
	required public init?(coder aDecoder: NSCoder) {
		isEditable = true
		
		super.init(coder: aDecoder)
	}
	
	public convenience init() {
		self.init(frame: CGRect.null)
	}
	
	override public init(frame: CGRect) {
		isEditable = true
		
		super.init(frame: frame)
	}

}
