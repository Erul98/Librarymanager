//
//  CellHeadBook.swift
//  DemoTableView
//
//  Created by Nguyen Hoang Anh on 6/1/19.
//  Copyright © 2019 Nguyen Hoang Anh. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class CellHeadBook: UITableViewCell{
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "CellId")
        // Initialization code
        setup()
        print("ada")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var cosmosView: CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.settings.filledImage = UIImage(named: "RatingStarEmpty")?.withRenderingMode(.alwaysOriginal)
        view.settings.filledImage = UIImage(named: "RatingStarFilled")?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    let Button: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderWidth = 1
        button.tintColor = .green
        button.backgroundColor = .green
        button.layer.cornerRadius = 5.0
        button.setTitle("Borrow", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.target(forAction: #selector(borrowBook), withSender: .none)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func borrowBook()
    {
        print("text")
    }
    
    let ImageBook: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "book")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let NameBook: UILabel = {
        let namebook = UILabel()
        namebook.text = "Book"
        namebook.font = UIFont.systemFont(ofSize: 18)
        namebook.textColor = .white
        namebook.translatesAutoresizingMaskIntoConstraints = false
        return namebook
    }()
    let NameAuthor: UILabel = {
        let nameauthor = UILabel()
        nameauthor.text = "Davis"
        nameauthor.font = UIFont.systemFont(ofSize: 14)
        nameauthor.textColor = .yellow
        nameauthor.translatesAutoresizingMaskIntoConstraints = false
        return nameauthor
    }()
    
    func setup(){
        
        contentView.addSubview(ImageBook)
        contentView.addSubview(NameBook)
        contentView.addSubview(NameAuthor)
        contentView.addSubview(cosmosView)
        contentView.addSubview(Button)
        
        ImageBook.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40).isActive = true
        ImageBook.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        ImageBook.heightAnchor.constraint(equalToConstant: 90).isActive = true
        ImageBook.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        NameBook.leadingAnchor.constraint(equalTo: ImageBook.trailingAnchor, constant: 20).isActive = true
        NameBook.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        NameBook.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40).isActive = true
        
        NameAuthor.leadingAnchor.constraint(equalTo: ImageBook.trailingAnchor, constant: 20).isActive = true
        NameAuthor.topAnchor.constraint(equalTo: NameBook.bottomAnchor, constant: 5).isActive = true
        NameAuthor.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40).isActive = true
        
        cosmosView.leadingAnchor.constraint(equalTo: ImageBook.trailingAnchor, constant: 20).isActive = true
        cosmosView.topAnchor.constraint(equalTo: NameAuthor.bottomAnchor, constant: 5).isActive = true
        
        Button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40).isActive = true
        Button.topAnchor.constraint(equalTo: cosmosView.bottomAnchor, constant: 10).isActive = true
        Button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        Button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        Button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        
        print("thanh cong")
    }
}
