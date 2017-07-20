//
//  TableViewController.swift
//  TableViewController
//
//  Created by techmaster on 7/20/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var dictList = ["Jungle" : "ls.jpg","MidLane" : "tf.jpg", "ADCarry" : "sv.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LeguageWallpaper"

    }

  

    // MARK: - Table view data source protocal,và delegate protocal

    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var arrKey = [String](dictList.keys)
        var arrValue = [String](dictList.values)
        
        cell.textLabel!.text = arrKey[(indexPath as NSIndexPath).row];
        cell.imageView?.image = UIImage(named: arrValue[(indexPath as NSIndexPath).row])
        
        return cell

    }
    


}
