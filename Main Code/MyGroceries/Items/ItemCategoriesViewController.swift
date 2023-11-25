//
//  ItemCategories.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/15/23.
//

import UIKit

class ItemCategoriesViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCategoryCell", for: indexPath) as! ItemCategoriesTableViewCell

        
        let category = categories[indexPath.row]
        cell.configure(with: category)
        
        return cell
    }
    
    var categories: [Category] = []

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categories = Category.mockCategories
        print(categories)
        
        TableView.dataSource = self
    }
    
}
