//
//  ViewController.swift
//  WKWebView
//
//  Created by Connor on 3/11/20.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        let myURL = URL(string: "https://www.homeaidessentialsutah.org/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            return .default
        }
    }
    
    
    // MARK: - Properties
    lazy var webView: WKWebView = {
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.allowsBackForwardNavigationGestures = true
        webView.uiDelegate = self
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()
    

}

extension ViewController {
    func setupUI() {
        self.view.addSubview(webView)
        
        NSLayoutConstraint.activate([
            webView.topAnchor
                .constraint(equalTo: self.view.topAnchor, constant: 0.0),
            webView.leftAnchor
                .constraint(equalTo: self.view.leftAnchor, constant: 0.0),
            webView.bottomAnchor
                .constraint(equalTo: self.view.bottomAnchor, constant: 0.0),
            webView.rightAnchor
                .constraint(equalTo: self.view.rightAnchor, constant: 0.0)
        ])
    }
    
}

