//
// SimpleApp
//
// Created by SAP BTP SDK Assistant for iOS v7.0.1 application on 09/03/22
//

import Foundation
import UIKit

class AlertHelper {
    static let okTitle = NSLocalizedString("keyOkButtonTitle",
                                           value: "OK",
                                           comment: "XBUT: Title of OK button.")

    static func displayAlert(with title: String, error: Error?, buttonTitle: String = AlertHelper.okTitle, viewController: UIViewController) {
        let alertController = UIAlertController(title: title, message: error?.localizedDescription, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: buttonTitle, style: .default))
        DispatchQueue.main.async {
            // Present the alertController
            viewController.present(alertController, animated: true)
        }
    }
}
