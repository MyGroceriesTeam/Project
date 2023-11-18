//
//  ItemEditorViewController.swift
//  MyGroceries
//
//  Created by Catherine McGinnis on 11/10/23.
//

import UIKit
import PhotosUI
import ParseSwift

class ItemEditorViewController: UIViewController {
    
    var categories = ["Fruits", "Vegetables", "Dairy", "Protein", "Grain", "Frozen", "Condiments", "Drinks", "Snacks", "Other"]
    
    var selectedCategory: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set the data source and delegate for the picker

        let menuClosure = {(action: UIAction) in
                   
           }
        categoryPicker.menu = UIMenu(children: [
               UIAction(title: "Fruit", state: .on, handler:
                                   menuClosure),
               UIAction(title: "Vegetable", handler: menuClosure),
               UIAction(title: "Dairy", handler: menuClosure),
               UIAction(title: "Protein", handler: menuClosure),
               UIAction(title: "Grain", handler: menuClosure),
               UIAction(title: "Frozen", handler: menuClosure),
               UIAction(title: "Condiment", handler: menuClosure),
               UIAction(title: "Drink", handler: menuClosure),
               UIAction(title: "Snack", handler: menuClosure),
               UIAction(title: "Other", handler: menuClosure),
           ])
       categoryPicker.showsMenuAsPrimaryAction = true
       categoryPicker.changesSelectionAsPrimaryAction = true
        
        
    }
    
    
    @IBOutlet weak var itemNameTextEditor: UITextField!
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var purchasedDatePicker: UIDatePicker!
    @IBOutlet weak var expiredDatePicker: UIDatePicker!
    @IBOutlet weak var categoryPicker: UIButton!
    @IBOutlet weak var notesEditor: UITextView!
    
    private var pickedImage: UIImage?
    
    // ---------------------------------------------------------------------------------------
    
    @IBAction func didTapImageEditor(_ sender: Any) {
        // Create a UIAlertController to present the options
        let alertController = UIAlertController(title: "Attach Photo", message: nil, preferredStyle: .actionSheet)

        // Option 1: Choose from the photo library
        let chooseLibraryAction = UIAlertAction(title: "Choose from Library", style: .default) { [weak self] _ in
            self?.presentImagePicker()
        }

        // Option 2: Take a photo
        let takePhotoAction = UIAlertAction(title: "Take a Photo", style: .default) { [weak self] _ in
            // Check if the device has a camera available
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self as? any UIImagePickerControllerDelegate & UINavigationControllerDelegate
                imagePicker.sourceType = .camera
                imagePicker.allowsEditing = false // You can set this to true if you want to allow editing

                self?.present(imagePicker, animated: true, completion: nil)
            } else {
                // Show an alert indicating that the camera is not available on the device.
                let alert = UIAlertController(title: "Camera Not Available", message: "Sorry, your device does not have a camera.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self?.present(alert, animated: true, completion: nil)
            }
        }

        // Option 3: Cancel
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        // Add the actions to the alertController
        alertController.addAction(chooseLibraryAction)
        alertController.addAction(takePhotoAction)
        alertController.addAction(cancelAction)

        // Present the alertController
        present(alertController, animated: true, completion: nil)
    }
    
    private func presentImagePicker() {
        // Create a configuration object
        var config = PHPickerConfiguration(photoLibrary: PHPhotoLibrary.shared())

        // Set the filter to only show images as options (i.e. no videos, etc.).
        config.filter = .images

        // Request the original file format. Fastest method as it avoids transcoding.
        config.preferredAssetRepresentationMode = .current

        // Only allow 1 image to be selected at a time.
        config.selectionLimit = 1

        // Instantiate a picker, passing in the configuration.
        let picker = PHPickerViewController(configuration: config)

        // Set the picker delegate so we can receive whatever image the user picks.
        picker.delegate = self

        // Present the picker.
        present(picker, animated: true)
    }

    // ---------------------------------------------------------------------------------------
    
    
    @IBAction func didTapDone(_ sender: Any) {
        // Dismiss Keyboard
        view.endEditing(true)
        
        // Create Food Item
        var foodItem = FoodItem()
        
        // Setting food item properties
        foodItem.itemName = itemNameTextEditor.text
        foodItem.purchaseDate = purchasedDatePicker.date
        foodItem.expirationDate = expiredDatePicker.date
        
        if let selectedCategory = selectedCategory {
                    foodItem.category = selectedCategory
                } else {
                    // Handle the case where no valid category is selected
                    // You might want to show an alert or set a default category here
                    foodItem.category = "Fruit"
                }
        
        foodItem.notes = notesEditor.text
    }
    
    @IBAction func categorySelected(_ sender: UIButton) {
        if let title = sender.currentTitle {
            selectedCategory = title
        }
    }
    
}

extension ItemEditorViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        
        // Dismiss the picker
        picker.dismiss(animated: true)
        
        // Make sure we have a non-nil item provider
        guard let provider = results.first?.itemProvider,
              // Make sure the provider can load a UIImage
              provider.canLoadObject(ofClass: UIImage.self) else { return }
        
        // Load a UIImage from the provider
        provider.loadObject(ofClass: UIImage.self) { [weak self] object, error in
            
            // Make sure we can cast the returned object to a UIImage
            guard let image = object as? UIImage else {
                
                // ❌ Unable to cast to UIImage
                self?.showAlert1()
                return
            }
            
            // Check for and handle any errors
            if let error = error {
                // self?.showAlert(for: error)
                return
            } else {
                
                // UI updates (like setting image on image view) should be done on main thread
                DispatchQueue.main.async {
                    
                    // Set image on preview image view
                    self?.imageViewer.image = image
                    
                    // Set image to use when saving post
                    self?.pickedImage = image
                }
            }
        }
    }
}

// Helper methods to present various alerts
extension ItemEditorViewController {

    func presentGoToSettingsAlert() {
        let alertController = UIAlertController (
            title: "Photo Access Required",
            message: "In order to post a photo to complete a task, we need access to your photo library. You can allow access in Settings",
            preferredStyle: .alert)

        let settingsAction = UIAlertAction(title: "Settings", style: .default) { _ in
            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }

            if UIApplication.shared.canOpenURL(settingsUrl) {
                UIApplication.shared.open(settingsUrl)
            }
        }

        alertController.addAction(settingsAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
    }

    /// Show an alert for the given error
    private func showAlert1(for error: Error? = nil) {
        let alertController = UIAlertController(
            title: "Oops...",
            message: "\(error?.localizedDescription ?? "Please try again...")",
            preferredStyle: .alert)

        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)

        present(alertController, animated: true)
    }
}
