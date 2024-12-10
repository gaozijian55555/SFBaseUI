//
//  BaseTableViewCell.swift
//  SwiftInterViewStoryboard
//
//  Created by 高子健 on 2024/12/6.
//

import UIKit
import SnapKit

open class BaseTableViewCell : UITableViewCell {
    
    private lazy var titleLabel: UILabel = {
        return UILabel.fast(font: UIFont.Body, color: UIColor.Theme)
    }()
    
    public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    open static func dequeueOrCreate(tableView: UITableView) -> BaseTableViewCell {
        let identifier = NSStringFromClass(Self.self);
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BaseTableViewCell {
            return cell
        } else {
            return BaseTableViewCell.init(style: .default, reuseIdentifier: identifier)
        }
    }
    
    open required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    open override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setUp()
        self.setUpLayout()
    }
    
    open func setUp() {
        self.contentView.addSubview(self.titleLabel)
        
        self.contentView.backgroundColor = UIColor.white
    }
    
    open func setUpLayout() {
        self.titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(10)
        }
    }
    
    open class func cellHeight(tableView: UITableView) -> CGFloat {
        return 50
    }
    
}
