//
//  CategoryViewController.swift
//  ProbaDruga
//
//  Created by Jola on 14.6.22..
//

import Foundation
import UIKit

class CategoryViewController: UITableViewController {
    var categories: [MyQueryQuery.Data.CategoryList.Child] = []
    
    
    @IBSegueAction func showProducts(_ coder: NSCoder, sender: Any?) -> ProductViewController? {
        guard
            let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell)
        else {
            return nil
        }
        
        return ProductViewController(product: categories[indexPath.row], coder: coder)
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            loadData()
    }
}

extension CategoryViewController {
    func loadData() {
        let query = MyQueryQuery()
        Apollo.shared.client.fetch(query: query) { result in
            switch result {
            case .success(let graphQLResult):
                if let categories = graphQLResult.data?.categoryList![0]?.children!.compactMap({ $0 }) {
                    self.categories = categories
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error loading data \(error)")
            }
        }
    }
}

extension CategoryViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      // swiftlint:disable:next force_unwrapping
      let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell")!

        let category = categories[indexPath.row]
        cell.textLabel?.text = category.name
        

        
      return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return categories.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return "Categories"
    }
    
}
