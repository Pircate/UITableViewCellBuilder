// 
//  ViewController.swift
//  UITableViewCellBuilder
//
//  Created by Pircate on 2018/9/15
//  Copyright © 2018年 Pircate. All rights reserved.
//
//  @author: Pircate(gao497868860@gmail.com)
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UserInfoCell.self)
        tableView.register(SwitchCell.self)
        tableView.register(TextCell.self)
        tableView.register(InfoCell.self)
        return tableView
    }()
    
    private lazy var dataSource: [[TableViewCellBuilder]] = {
        [[.userInfo(#imageLiteral(resourceName: "avatar"), "用户名", "这家伙很懒，什么都没留下"),
          .switch("通知", true)],
         [.text("我的收益", "0.0 元"),
          .text("我的金币", "8848"),
          .text("我的动态", ""),
          .text("我的VIP", "未开通")],
         [.info("活动"),
          .info("通知")]]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            // 刷新我的收益
            guard case .text(let title, var price) = self.dataSource[1][0] else { return }
            price = "998.0 元"
            self.dataSource[1][0] = .text(title, price)
            self.tableView.reloadData()
        }
    }
}

extension ViewController {
    
    subscript(indexPath: IndexPath) -> TableViewCellBuilder {
        return dataSource[indexPath.section][indexPath.row]
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let builder = self[indexPath]
        let cell = tableView.dequeueReusableCell(builder.cellType)
        builder.build(cell)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self[indexPath].rowHeight
    }
}
