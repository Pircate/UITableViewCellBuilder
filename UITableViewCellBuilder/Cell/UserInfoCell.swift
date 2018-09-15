//
//  UserInfoCell.swift
//  UITableViewCellBuilder
//
//  Created by 高 on 2018/1/29.
//  Copyright © 2018年 gaoX. All rights reserved.
//

import UIKit

class UserInfoCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        accessoryType = .disclosureIndicator
        textLabel?.numberOfLines = 0
        textLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UserInfoCell: UITableViewCellUpdatable {
    
    func update(_ builder: UITableViewCellBuilder) {
        guard let builder = builder as? TableViewCellBuilder,
            case let .userInfo(image, name, desc) = builder else { return }
        imageView?.image = image
        textLabel?.text = name
        detailTextLabel?.text = desc
    }
}
