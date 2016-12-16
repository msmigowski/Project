//
//  MainView.swift
//  Project
//
//  Created by Marcin Wawrzyniak on 16/12/16.
//  Copyright © 2016 Mateusz Smigowski. All rights reserved.
//

import UIKit
import Cartography

class MainView: UIView {

    let tableView = UITableView.init()
    
    init() {
        print("Init - MainView")
        super.init(frame: ScreenSize.frame)
        
        self.setupSubviews()
        self.setupConstraints()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func setupSubviews() {
        self.backgroundColor = UIColor.blue
        
        self.addSubview(self.tableView)
    }
    
    
    func setupConstraints() {
        constrain(self.tableView) { (table) in
            table.edges == table.superview!.edges
        }
    }
    
    
    deinit {
        print("Deinit - MainView")
    }

}
