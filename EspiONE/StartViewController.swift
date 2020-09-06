//
//  StartViewController.swift
//  Fake Nameificator
//
//  Created by Alexander Hall on 9/5/20.
//  Copyright © 2020 Hall Inc. All rights reserved.
//

import UIKit
import LocalAuthentication

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func scanFace(_ sender: UIButton) {
        
        let context:LAContext = LAContext()
        
        context.localizedFallbackTitle = ""
        
        if(context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)) {
            print("could evaluate policy!")
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Verify Device User Identity") { (success, error) in
                DispatchQueue.main.async {
                    if success {
                        let alert = UIAlertController(title: "Success", message: "You are the correct user!", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Ok", style: .default) {(action: UIAlertAction) -> Void in
                            alert.removeFromParent()
                            self.performSegue(withIdentifier: "startToSpyTools", sender: nil)
                        })
                        self.present(alert, animated: true, completion: nil)
                    } else {
                        if(error!._code != LAError.userCancel.rawValue) {
                            let alert = UIAlertController(title: "Error", message: "You are not the right user!", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Ok", style: .default) {(action: UIAlertAction) -> Void in
                                alert.removeFromParent()
                            })
                            self.present(alert, animated: true, completion: nil)
                        }
                    }
                }
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Too many incorrect attempts! Re-enter your phone password in settings.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default) {(action: UIAlertAction) -> Void in
                alert.removeFromParent()
            })
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func unwindToStartFromSpyToolsMapVC(segue: UIStoryboardSegue) {
        
    }

}
