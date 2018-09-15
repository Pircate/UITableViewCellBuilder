// 
//  UITableViewCellBuilder.swift
//  UITableViewCellBuilder
//
//  Created by Pircate on 2018/9/15
//  Copyright © 2018年 Pircate. All rights reserved.
//
//  @author: Pircate(gao497868860@gmail.com)
//

import UIKit

public typealias UpdatableTableViewCell = UITableViewCellUpdatable & UITableViewCell

public protocol UITableViewCellBuilder {
    
    var cellType: UpdatableTableViewCell.Type { get }
    
    var rowHeight: CGFloat { get }
    
    func build(_ cell: UpdatableTableViewCell)
}

public extension UITableViewCellBuilder {
    
    var rowHeight: CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func build(_ cell: UpdatableTableViewCell) {
        cell.update(self)
    }
}
