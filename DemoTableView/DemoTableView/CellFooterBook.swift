//
//  CellFooterBook.swift
//  DemoTableView
//
//  Created by Nguyen Hoang Anh on 6/1/19.
//  Copyright © 2019 Nguyen Hoang Anh. All rights reserved.
//

import UIKit

class CellFooterBook: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate{
    
    let cellId = "cellId"
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "cellFooter")
        // Initialization code
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId); //register custom UICollectionViewCell class.
        setupViews()
        print("ada")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let label : UILabel={
        let label = UILabel()
        label.text = "Related books"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout();
        layout.scrollDirection = .horizontal; //set scroll direction to horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout);
        cv.backgroundColor = .blue; //testing
        cv.translatesAutoresizingMaskIntoConstraints = false;
        return cv;
    }();
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath);
        cell.backgroundColor = .red;
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100.0, height: 300.0);
    }
    
    
    
    func setupViews(){
        
        contentView.addSubview(label)
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true;
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true;
        contentView.addSubview(collectionView);
        
        collectionView.delegate = self;
        collectionView.dataSource = self;
        
        collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true;
        collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true;
        collectionView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true;
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -20).isActive = true;
        collectionView.widthAnchor.constraint(equalToConstant: contentView.frame.width).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        
    }
}

