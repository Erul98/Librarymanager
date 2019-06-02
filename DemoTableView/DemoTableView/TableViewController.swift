//
//  TableViewController.swift
//  DemoTableView
//
//  Created by Nguyen Hoang Anh on 6/1/19.
//  Copyright © 2019 Nguyen Hoang Anh. All rights reserved.
//

import UIKit

class TableViewController: UIViewController{
    
    let mainTableView = MainTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Book"
        setup()
    }
    
    func setup() {
        self.view.addSubview(mainTableView)
        
        mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        mainTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    }
    
}
