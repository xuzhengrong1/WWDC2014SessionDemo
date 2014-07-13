// Playground - noun: a place where people can play

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let row = indexPath.row
        let style = UITableViewCellStyle.fromRaw(row)
        let cell = UITableViewCell(style: style ? style! : .Default, reuseIdentifier: nil)
        cell.textLabel.text = "Text"
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = "Detail Text"
        }
        return cell
    }
}
let dataSource = DataSource()
let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 500), style: .Plain)
tableView.dataSource = dataSource
tableView.reloadData()


