//
//  CellBodyBook.swift
//  DemoTableView
//
//  Created by Nguyen Hoang Anh on 6/1/19.
//  Copyright © 2019 Nguyen Hoang Anh. All rights reserved.
//

import UIKit

class CellBodyBook: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "cellBody")
        // Initialization code
        setup()
        print("ada")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let About: UILabel = {
        let about = UILabel()
        about.text = "About"
        about.font = UIFont.systemFont(ofSize: 18)
        about.textColor = .white
        about.translatesAutoresizingMaskIntoConstraints = false
        return about
    }()
    let Text: UILabel = {
        let text = UILabel()
        text.text = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadsadasdawwjanfsafnfanfafasafsafasfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa.\n\naaaaaaaaaaaaaaaaaaaaaaaaaaasadaskfsgndkfnaskdjnaskdnasdadasdsadadadadadssadsadadadasdadadadasdsdsdaadsaadadsadassadsadasdasdasdadadsadasdasdasdsdadasdadadadwwfafasfawfefafafsafasfsafasfaffasfafafasf"
        text.font = UIFont.systemFont(ofSize: 14)
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.lineBreakMode = NSLineBreakMode.byWordWrapping
        text.numberOfLines = 0
        text.textAlignment = .left
        return text
    }()
    
    func setup(){
        
        contentView.addSubview(About)
        
        contentView.addSubview(Text)
        
        About.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        About.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        
        Text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        Text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        Text.topAnchor.constraint(equalTo: About.bottomAnchor, constant: 10).isActive = true
        Text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        
        print("thanh cong")
    }

}
