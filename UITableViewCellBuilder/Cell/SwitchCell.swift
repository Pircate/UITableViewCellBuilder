//
//  SwitchCell.swift
//  UITableViewCellBuilder
//
//  Created by GorXion on 2018/5/17.
//  Copyright © 2018年 gaoX. All rights reserved.
//

import UIKit

class SwitchCell: UITableViewCell {
    
    private lazy var sct: UISwitch = {
        UISwitch(frame: CGRect(x: UIScreen.main.bounds.width - 65, y: 7, width: 60, height: 30))
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(sct)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SwitchCell: UITableViewCellUpdatable {
    
    func update(_ builder: UITableViewCellBuilder) {
        guard let builder = builder as? TableViewCellBuilder,
            case let .switch(title, isOn) = builder else { return }
        textLabel?.text = title
        sct.isOn = isOn
    }
}
