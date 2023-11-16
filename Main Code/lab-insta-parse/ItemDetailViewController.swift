//
//  ItemDetailViewController.swift
//  MyGroceries
//
//  Created by Catherine McGinnis on 11/10/23.
//

import UIKit

class ItemDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemCategoryLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var datePurchasedLabel: UILabel!
    @IBOutlet weak var dateExpiredLabel: UILabel!
    @IBOutlet weak var itemImageLabel: UIImageView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//    @IBOutlet weak var dateLabels: UILabel!
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        dateLabels.layer.cornerRadius = 2
//
//    }
    
    
}


