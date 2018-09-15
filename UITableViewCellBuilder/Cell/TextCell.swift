//
//  TextCell.swift
//  UITableViewCellBuilder
//
//  Created by GorXion on 2018/5/17.
//  Copyright © 2018年 gaoX. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: contentView.frame.width - 115, y: 12, width: 80, height: 20))
        label.textColor = UIColor.gray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        
        contentView.addSubview(subtitleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TextCell: UITableViewCellUpdatable {
    
    func update(_ builder: UITableViewCellBuilder) {
        guard let builder = builder as? TableViewCellBuilder,
            case let .text(title, subtitle) = builder else { return }
        textLabel?.text = title
        subtitleLabel.text = subtitle
    }
}
