//
//  SFNavigationBar.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/9.
//

import UIKit

open class SFNavigationBar: UIView {
    
    private var isHiddenBackBtn: Bool = false
    
    private lazy var titleView: UILabel = {
        let label = UILabel.fast(font: UIFont.Title, color: UIColor.Theme)
        label.textAlignment = .center
        self.addSubview(label)
        return label
    }()
    
    public var title: String? {
        didSet {
            self.titleView.text = title
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
        self.layoutUI()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.backgroundColor = UIColor(hex: "#FAFAFA")
        self.addSubview(self.titleView)
    }
    
    private func layoutUI() {
        self.titleView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.height.equalTo(30)
            make.bottom.equalToSuperview().offset(-10)
        }
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        let statusBarFrame: CGRect! = UIApplication.shared.statusFrame()
        self.frame = CGRectMake(0, 0, statusBarFrame.width, statusBarFrame.height + 44)
    }
}
