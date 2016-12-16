//
//  MainViewController.swift
//  Project
//
//  Created by Marcin Wawrzyniak on 16/12/16.
//  Copyright © 2016 Mateusz Smigowski. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var aView: MainView { return self.view as! MainView }
    
    override func loadView() {
        self.view = MainView()
        self.aView.tableView.dataSource = self
        self.aView.tableView.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Fetching json data
        FileApi.setDataFromJsonFile()
    }
    
    
    //TableView data source problems
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "com.project.cell")
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "com.project.cell")
        }

        // Setup cell's
        cell?.textLabel?.text = "COS"
        
        return cell!
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

}
