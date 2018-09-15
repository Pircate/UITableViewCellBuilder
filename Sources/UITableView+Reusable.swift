// 
//  UITableView+Reusable.swift
//  UITableViewCellBuilder
//
//  Created by Pircate on 2018/9/15
//  Copyright © 2018年 Pircate. All rights reserved.
//
//  @author: Pircate(gao497868860@gmail.com)
//

import UIKit

public extension UITableView {
    
    func register(_ type: UpdatableTableViewCell.Type) {
        register(type, forCellReuseIdentifier: String(describing: type))
    }
    
    func dequeueReusableCell(_ type: UpdatableTableViewCell.Type) -> UpdatableTableViewCell {
        let identifier = String(describing: type)
        guard let cell = dequeueReusableCell(withIdentifier: identifier) as? UpdatableTableViewCell else {
            fatalError(
                "Failed to dequeue a cell with identifier \(identifier) matching type \(type.self)."
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the cell beforehand"
            )
        }
        return cell
    }
}
