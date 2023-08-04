//
//  MainViewController.swift
//  WebViewTest
//
//  Created by Levi Zitting on 8/3/23.
//

import Foundation
import UIKit
import WebKit

class MainViewController: UIViewController {
    var webView1: WKWebView!
    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        addSubViews()
    }
    
    
    private func addSubViews() {
        let webConfiguration = WKWebViewConfiguration()
        webView1 = WKWebView(frame: .zero, configuration: webConfiguration)
        
        view.addSubview(webView1)
        
        
        NSLayoutConstraint.activate([
            webView1.topAnchor.constraint(equalTo: view.topAnchor),
            webView1.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            webView1.leftAnchor.constraint(equalTo: view.leftAnchor),
            webView1.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
        
        let url = URL(string:"https://www.apple.com")
        let request = URLRequest(url: url!)
        
        webView1.load(request)
    }
}
