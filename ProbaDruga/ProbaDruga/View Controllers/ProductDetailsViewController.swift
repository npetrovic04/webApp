//
//  ProductDetailsViewController.swift
//  ProbaDruga
//
//  Created by Jola on 14.6.22..
//

import Foundation
import UIKit

class ProductDetailsViewController: UITableViewController {
    let product: GetCategoryProductsQuery.Data.Product.Item
    
    @IBOutlet weak var image: UIImageView!
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) is not implemented")
    }
    
    init?(product: GetCategoryProductsQuery.Data.Product.Item, coder: NSCoder) {
      self.product = product
      super.init(coder: coder)
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
        title = product.name
        image.load(urlString: (product.image?.url)!)
    }
}

extension ProductDetailsViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailsCell")!
        
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "ID"
            if let productID = product.id {
                cell.detailTextLabel?.text = "\(productID)"
            }
        }
        else if indexPath.row == 1 {
            cell.textLabel?.text = "NAME"
            cell.detailTextLabel?.text = product.name
        }
        else if indexPath.row == 2 {
            cell.textLabel?.text = "SKU"
            cell.detailTextLabel?.text = product.sku
        }
        else if indexPath.row == 3 {

//            cell.imageView?.image =

        }
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
          return 3
      }
        return 1

    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return section == 0 ? "Product Details" : "Characters"
    }
    
}
extension UIImageView {
    func load(urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
           DispatchQueue.global().async { [weak self] in
               if let data = try? Data(contentsOf: url) {
                   if let image = UIImage(data: data) {
                       DispatchQueue.main.async {
                           self?.image = image
                       }
                   }
               }
           }
       }
}
