//
//  ViewController.swift
//  LastEmo
//
//  Created by David Gretz on 10/25/16.
//  Copyright © 2016 BadinHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableview: UITableView!
    
    var emojis = ["😀 The Happy One","😇 The Angel","🤔 Mr. Thoughtful","😛 the Taunt","👻 Boo Boo","🍎 For the Teacher","🐧 For Elijah","🐝Bee Smart"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableview.dataSource=self
        coolTableview.delegate=self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

