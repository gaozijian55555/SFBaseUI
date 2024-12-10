//
//  BaseViewController.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/8.
//

import UIKit

open class BaseViewController : UIViewController {
    
    open lazy var navigationBar: SFNavigationBar = {
        let navBar = SFNavigationBar(frame: CGRectZero)
        self.view.addSubview(navBar)
        return navBar
    }()
    
    open override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.modalPresentationStyle = .fullScreen
        self.title = NSStringFromClass(Self.self).components(separatedBy: ".").last
    }
    
    open required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        self.setupNavigationBar()
    }
    
    public override var title: String? {
        didSet {
            self.navigationBar.title = title
        }
    }
    
    private func setupNavigationBar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
}
