//
//  BaseViewController.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/8.
//

import UIKit

open class BaseViewController : UIViewController {
    
    lazy var navigationBar: SFNavigationBar = {
        let navBar = SFNavigationBar(frame: CGRectZero)
        self.view.addSubview(navBar)
        return navBar
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle = .fullScreen
        self.title = NSStringFromClass(Self.self).components(separatedBy: ".").last
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        self.setupNavigationBar()
    }
    
    override var title: String? {
        didSet {
            self.navigationBar.title = title
        }
    }
    
    func setupNavigationBar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
}
