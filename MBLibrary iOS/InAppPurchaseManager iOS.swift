//
//  InAppPurchaseManager iOS.swift
//  MBLibrary
//
//  Created by Marco Boschi on 13/08/16.
//  Copyright © 2016 Marco Boschi. All rights reserved.
//

import UIKit
import StoreKit

extension InAppPurchaseManager {
	
	public class func getProductListError() -> UIAlertController {
		return UIAlertController(simpleAlert: MBLocalizedString("ERROR_PURCHASE", comment: "Error"), message: MBLocalizedString("ERROR_PROD_LIST", comment: "Product list"))
	}
	
	public class func getAlert(forError error: Error) -> UIAlertController? {
		guard InAppPurchaseManager.shouldDisplayError(for: error) else {
			return nil
		}

		return UIAlertController(simpleAlert: MBLocalizedString("ERROR_PURCHASE", comment: "Error"), message: error.localizedDescription)
	}
	
}
