//
//  MainViewController.swift
//  WebViewTest
//
//  Created by Levi Zitting on 8/3/23.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        view.backgroundColor = UIColor.white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("MainViewController")
        view.backgroundColor = UIColor.white
    }
}
