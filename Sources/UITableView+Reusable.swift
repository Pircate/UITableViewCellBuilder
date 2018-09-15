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
        return dequeueReusableCell(withIdentifier: String(describing: type)) as! UpdatableTableViewCell
    }
}
