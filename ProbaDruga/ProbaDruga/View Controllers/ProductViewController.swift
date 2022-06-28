//
//  ProductViewController.swift
//  ProbaDruga
//
//  Created by Jola on 14.6.22..
//

import Foundation
import UIKit

class ProductViewController: UITableViewController {
    private var product: MyQueryQuery.Data.CategoryList.Child
    private var selectedCategory: MyQueryQuery.Data.CategoryList.Child.Child?
    var products: [GetCategoryProductsQuery.Data.Product.Item]
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init?(product: MyQueryQuery.Data.CategoryList.Child, coder: NSCoder) {
        self.product = product
        self.selectedCategory = nil
        self.products = []
        super.init(coder: coder)
            
    }

    @IBSegueAction func showProductDetails(_ coder: NSCoder, sender: Any?) -> ProductDetailsViewController? {
        guard let cell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: cell)
        else {
            return nil
        }
        let product = products[indexPath.row]
        return ProductDetailsViewController(product: product, coder: coder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(selectedCategory?.name != nil){
            title = selectedCategory?.name
        } else{
            title = product.name
        }
        loadData(category: product.uid)
    }
}

extension ProductViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsCell")!
              cell.textLabel?.text = product.children?[indexPath.row]?.name

            return cell
        }
        print("cao lepi ja sam mag")
        print(products.count)
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductItemsCell")!
        let itemsExist = products.isEmpty
        
        if(!itemsExist){
            cell.textLabel?.text = products[indexPath.row].name
        }
            return cell

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        if(section == 0){
            return product.children?.count ?? 0
        }
        if(section == 1){
            return products.count
        }
        
        return 0

    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return section == 0 ? "Categories" : "Products"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.section == 0){
        self.selectedCategory = product.children?[indexPath.row] ?? nil;
        
        self.loadData(category: self.selectedCategory?.uid)
        }
    }
    
    func loadData(category: String?) {
        let categoryId = category
        let query = GetCategoryProductsQuery(categoryId: categoryId, pageSize: 24)
        
        Apollo.shared.client.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                if let productItems = graphQLResult.data?.products?.items!.compactMap({ $0 }) {
                    self.products = productItems
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error loading data \(error)")
            }
        }
    }
   
}
