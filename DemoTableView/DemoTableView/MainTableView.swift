//
//  MainTableView.swift
//  DemoTableView
//
//  Created by Nguyen Hoang Anh on 6/1/19.
//  Copyright © 2019 Nguyen Hoang Anh. All rights reserved.
//

import UIKit

class MainTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: CGRect.zero, style: .grouped)
        
        self.delegate = self
        self.dataSource = self
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(CellHeadBook.self, forCellReuseIdentifier: "cellID")
        self.register(CellBodyBook.self, forCellReuseIdentifier: "cellBody")
        self.register(CellFooterBook.self, forCellReuseIdentifier: "cellFooter")
        self.register(UITableViewCell.self, forCellReuseIdentifier: "cellTable")
        self.rowHeight = UITableView.automaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0
        {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! CellHeadBook
                cell.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0.1322061121, green: 0.07612738758, blue: 0.04588056356, alpha: 1))
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellBody", for: indexPath) as! CellBodyBook
                cell.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0.1322061121, green: 0.07612738758, blue: 0.04588056356, alpha: 1))
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellFooter", for: indexPath) as! CellFooterBook
                cell.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0.1322061121, green: 0.07612738758, blue: 0.04588056356, alpha: 1))
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
                return cell
            }
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)
        return cell
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
