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
    var webViewContainer: UIStackView!
    lazy var normalWebView: WKWebView = {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.processPool = WKProcessPool()
        webConfiguration.websiteDataStore  = WKWebsiteDataStore.default()
        return WKWebView(frame: .zero, configuration: webConfiguration)
    }()
    
    lazy var privateWebView: WKWebView = {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.processPool = WKProcessPool()
        webConfiguration.websiteDataStore  = WKWebsiteDataStore.nonPersistent()

        return WKWebView(frame: .zero, configuration: webConfiguration)
    }()
    
    
    override func viewDidAppear(_ animated: Bool) {
        addSubViews()
        
        setupLayout()
        
        loadNormalWebPage()
        loadPrivateWebPage()
    }
    
    
    private func addSubViews() {
        webViewContainer = UIStackView(arrangedSubviews: [privateWebView, normalWebView])
        
        webViewContainer.axis = NSLayoutConstraint.Axis.vertical
        webViewContainer.distribution = UIStackView.Distribution.fillEqually
        webViewContainer.alignment = UIStackView.Alignment.fill
        webViewContainer.spacing = 10.0
        
        view.addSubview(webViewContainer)
    }
    
    private func loadNormalWebPage() {
        let url = URL(string:"https://f6gvvn.csb.app")
        let request = URLRequest(url: url!)
                
        normalWebView.load(request)
    }
    
    private func loadPrivateWebPage() {
        let url = URL(string:"https://f6gvvn.csb.app")
        let request = URLRequest(url: url!)
                
        privateWebView.load(request)
    }
    
    private func setupLayout() {
        webViewContainer.translatesAutoresizingMaskIntoConstraints = false
                        
                        
        NSLayoutConstraint.activate([
            webViewContainer.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            webViewContainer.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            webViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
//        normalWebView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            normalWebView.topAnchor.constraint(equalTo: webViewContainer.topAnchor),
//            normalWebView.bottomAnchor.constraint(equalTo: webViewContainer.bottomAnchor),
//            normalWebView.leadingAnchor.constraint(equalTo: webViewContainer.leadingAnchor),
//            normalWebView.trailingAnchor.constraint(equalTo: webViewContainer.trailingAnchor),
//        ])
    }
}
