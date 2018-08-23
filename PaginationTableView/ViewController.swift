//
//  ViewController.swift
//  PaginationTableView
//
//  Created by Yash Patel on 02/12/17.
//  Copyright © 2017 Yash Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if indexPath.row == data.count - 1 {
            // more data
            moreData()
        }
    }
    
    func moreData() {
        for _ in 0...10 {
            data.append(data.last! + 1)
            print(data.count)
        }
        tableView.reloadData()
    }
}
















