//
//  WebViewController.swift
//  Fake Nameificator
//
//  Created by Alexander Hall on 9/5/20.
//  Copyright © 2020 Hall Inc. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //let myURL = URL(string: "https://fake-nameificator.uc.r.appspot.com/")
        let myURL = URL(string: "https://0e4ef622.github.io/fake-nameificator/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
        createBackButton()
    }

    private func createBackButton() {
        let button = UIButton(type: .system) as UIButton
        button.setBackgroundImage(UIImage(systemName: "arrowtriangle.left"), for: .normal)
        button.frame = CGRect(x: 20, y: 20, width: 50, height: 40)
        button.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
