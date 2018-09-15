// 
//  UITableViewCellUpdatable.swift
//  UITableViewCellBuilder
//
//  Created by Pircate on 2018/9/15
//  Copyright © 2018年 Pircate. All rights reserved.
//
//  @author: Pircate(gao497868860@gmail.com)
//

import UIKit

public protocol UITableViewCellUpdatable where Self: UITableViewCell {
    
    func update(_ builder: UITableViewCellBuilder)
}
