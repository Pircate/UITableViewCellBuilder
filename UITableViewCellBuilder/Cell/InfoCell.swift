//
//  WithDetailCell.swift
//  UITableViewCellBuilder
//
//  Created by GorXion on 2018/5/17.
//  Copyright © 2018年 gaoX. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {
}

extension InfoCell: UITableViewCellUpdatable {
    
    func update(_ builder: UITableViewCellBuilder) {
        accessoryType = .detailButton
        guard let builder = builder as? TableViewCellBuilder,
            case let .info(title) = builder else { return }
        textLabel?.text = title
    }
}
