//
//  ItemDetailViewController.swift
//  MyGroceries
//
//  Created by Catherine McGinnis on 11/10/23.
//

import UIKit
import PhotosUI
import ParseSwift
import Alamofire
import AlamofireImage

class ItemDetailViewController: UIViewController {
    
    var foodItem: FoodItem?
    private var imageDataRequest: DataRequest?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Date casting
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        itemNameLabel.text = foodItem?.itemName
        datePurchasedLabel.text = dateFormatter.string(from: (foodItem?.purchaseDate)!)
        dateExpiredLabel.text = dateFormatter.string(from: (foodItem?.expirationDate)!)
        itemCategoryLabel.text = foodItem?.category
        notesLabel.text = foodItem?.notes
        
        // Image
        if let imageFile = foodItem?.itemImage,
           let imageUrl = imageFile.url {

            // Use AlamofireImage helper to fetch remote image from URL
            imageDataRequest = AF.request(imageUrl).responseImage { [weak self] response in
                switch response.result {
                case .success(let image):
                    // Set image view image with fetched image
                    self?.itemImageLabel.image = image
                case .failure(let error):
                    print("❌ Error fetching image: \(error.localizedDescription)")
                    break
                }
            }
        }
    }
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemCategoryLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var datePurchasedLabel: UILabel!
    @IBOutlet weak var dateExpiredLabel: UILabel!
    @IBOutlet weak var itemImageLabel: UIImageView!
    
}
