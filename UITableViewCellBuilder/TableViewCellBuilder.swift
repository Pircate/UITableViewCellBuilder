// 
//  TableViewCellBuilder.swift
//  UITableViewCellBuilder
//
//  Created by Pircate on 2018/9/15
//  Copyright © 2018年 Pircate. All rights reserved.
//
//  @author: Pircate(gao497868860@gmail.com)
//

import UIKit

enum TableViewCellBuilder: UITableViewCellBuilder {
    case userInfo(UIImage, String, String)
    case `switch`(String, Bool)
    case text(String, String)
    case info(String)
    
    var cellType: UpdatableTableViewCell.Type {
        switch self {
        case .userInfo:
            return UserInfoCell.self
        case .switch:
            return SwitchCell.self
        case .text:
            return TextCell.self
        case .info:
            return InfoCell.self
        }
    }
    
    var rowHeight: CGFloat {
        switch self {
        case .userInfo:
            return 88
        default:
            return UITableViewAutomaticDimension
        }
    }
}
