//
//  ItemListViewController.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/13/23.
//

import UIKit

class ItemListViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemListCell", for: indexPath) as! ItemListTableViewCell

        let item = items[indexPath.row]
        cell.configure(with: item)

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        print("Deleted")

        self.items.remove(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .automatic)
      }
    }

    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = Item.mockItem
        print(items)
        
        tableView.dataSource = self

    }
  
    
}

