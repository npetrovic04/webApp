// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class MyQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query MyQuery {
      categoryList(filters: {category_uid: {eq: "MjY0Mg=="}}) {
        __typename
        uid
        name
        children {
          __typename
          image
          uid
          name
          description
          children {
            __typename
            uid
            image
            name
            description
            children {
              __typename
              image
              uid
              name
              description
              children {
                __typename
                uid
                image
                name
                description
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "MyQuery"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("categoryList", arguments: ["filters": ["category_uid": ["eq": "MjY0Mg=="]]], type: .list(.object(CategoryList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(categoryList: [CategoryList?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "categoryList": categoryList.flatMap { (value: [CategoryList?]) -> [ResultMap?] in value.map { (value: CategoryList?) -> ResultMap? in value.flatMap { (value: CategoryList) -> ResultMap in value.resultMap } } }])
    }

    /// Return an array of categories based on the specified filters.
    public var categoryList: [CategoryList?]? {
      get {
        return (resultMap["categoryList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [CategoryList?] in value.map { (value: ResultMap?) -> CategoryList? in value.flatMap { (value: ResultMap) -> CategoryList in CategoryList(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [CategoryList?]) -> [ResultMap?] in value.map { (value: CategoryList?) -> ResultMap? in value.flatMap { (value: CategoryList) -> ResultMap in value.resultMap } } }, forKey: "categoryList")
      }
    }

    public struct CategoryList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CategoryTree"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("children", type: .list(.object(Child.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(uid: GraphQLID, name: String? = nil, children: [Child?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "CategoryTree", "uid": uid, "name": name, "children": children.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The unique ID for a `CategoryInterface` object.
      public var uid: GraphQLID {
        get {
          return resultMap["uid"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "uid")
        }
      }

      /// The display name of the category.
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// A tree of child categories.
      public var children: [Child?]? {
        get {
          return (resultMap["children"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Child?] in value.map { (value: ResultMap?) -> Child? in value.flatMap { (value: ResultMap) -> Child in Child(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }, forKey: "children")
        }
      }

      public struct Child: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CategoryTree"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("image", type: .scalar(String.self)),
            GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("children", type: .list(.object(Child.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(image: String? = nil, uid: GraphQLID, name: String? = nil, description: String? = nil, children: [Child?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "CategoryTree", "image": image, "uid": uid, "name": name, "description": description, "children": children.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var image: String? {
          get {
            return resultMap["image"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "image")
          }
        }

        /// The unique ID for a `CategoryInterface` object.
        public var uid: GraphQLID {
          get {
            return resultMap["uid"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "uid")
          }
        }

        /// The display name of the category.
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// An optional description of the category.
        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        /// A tree of child categories.
        public var children: [Child?]? {
          get {
            return (resultMap["children"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Child?] in value.map { (value: ResultMap?) -> Child? in value.flatMap { (value: ResultMap) -> Child in Child(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }, forKey: "children")
          }
        }

        public struct Child: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CategoryTree"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("description", type: .scalar(String.self)),
              GraphQLField("children", type: .list(.object(Child.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(uid: GraphQLID, image: String? = nil, name: String? = nil, description: String? = nil, children: [Child?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "CategoryTree", "uid": uid, "image": image, "name": name, "description": description, "children": children.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The unique ID for a `CategoryInterface` object.
          public var uid: GraphQLID {
            get {
              return resultMap["uid"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "uid")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          /// The display name of the category.
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// An optional description of the category.
          public var description: String? {
            get {
              return resultMap["description"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          /// A tree of child categories.
          public var children: [Child?]? {
            get {
              return (resultMap["children"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Child?] in value.map { (value: ResultMap?) -> Child? in value.flatMap { (value: ResultMap) -> Child in Child(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }, forKey: "children")
            }
          }

          public struct Child: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CategoryTree"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .scalar(String.self)),
                GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("description", type: .scalar(String.self)),
                GraphQLField("children", type: .list(.object(Child.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: String? = nil, uid: GraphQLID, name: String? = nil, description: String? = nil, children: [Child?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "CategoryTree", "image": image, "uid": uid, "name": name, "description": description, "children": children.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }

            /// The unique ID for a `CategoryInterface` object.
            public var uid: GraphQLID {
              get {
                return resultMap["uid"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "uid")
              }
            }

            /// The display name of the category.
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// An optional description of the category.
            public var description: String? {
              get {
                return resultMap["description"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "description")
              }
            }

            /// A tree of child categories.
            public var children: [Child?]? {
              get {
                return (resultMap["children"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Child?] in value.map { (value: ResultMap?) -> Child? in value.flatMap { (value: ResultMap) -> Child in Child(unsafeResultMap: value) } } }
              }
              set {
                resultMap.updateValue(newValue.flatMap { (value: [Child?]) -> [ResultMap?] in value.map { (value: Child?) -> ResultMap? in value.flatMap { (value: Child) -> ResultMap in value.resultMap } } }, forKey: "children")
              }
            }

            public struct Child: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CategoryTree"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
                  GraphQLField("image", type: .scalar(String.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                  GraphQLField("description", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(uid: GraphQLID, image: String? = nil, name: String? = nil, description: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "CategoryTree", "uid": uid, "image": image, "name": name, "description": description])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The unique ID for a `CategoryInterface` object.
              public var uid: GraphQLID {
                get {
                  return resultMap["uid"]! as! GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "uid")
                }
              }

              public var image: String? {
                get {
                  return resultMap["image"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "image")
                }
              }

              /// The display name of the category.
              public var name: String? {
                get {
                  return resultMap["name"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }

              /// An optional description of the category.
              public var description: String? {
                get {
                  return resultMap["description"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "description")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class GetCategoryProductsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetCategoryProducts($categoryId: String, $pageSize: Int) {
      products(
        pageSize: $pageSize
        currentPage: 1
        filter: {category_uid: {eq: $categoryId}}
      ) {
        __typename
        items {
          __typename
          id
          name
          sku
          image {
            __typename
            url
          }
        }
      }
    }
    """

  public let operationName: String = "GetCategoryProducts"

  public var categoryId: String?
  public var pageSize: Int?

  public init(categoryId: String? = nil, pageSize: Int? = nil) {
    self.categoryId = categoryId
    self.pageSize = pageSize
  }

  public var variables: GraphQLMap? {
    return ["categoryId": categoryId, "pageSize": pageSize]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", arguments: ["pageSize": GraphQLVariable("pageSize"), "currentPage": 1, "filter": ["category_uid": ["eq": GraphQLVariable("categoryId")]]], type: .object(Product.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: Product? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "products": products.flatMap { (value: Product) -> ResultMap in value.resultMap }])
    }

    /// Search for products that match the criteria specified in the `search` and `filter` attributes.
    public var products: Product? {
      get {
        return (resultMap["products"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Products"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(items: [Item?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Products", "items": items.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// An array of products that match the specified search criteria.
      public var items: [Item?]? {
        get {
          return (resultMap["items"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Item?] in value.map { (value: ResultMap?) -> Item? in value.flatMap { (value: ResultMap) -> Item in Item(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Item?]) -> [ResultMap?] in value.map { (value: Item?) -> ResultMap? in value.flatMap { (value: Item) -> ResultMap in value.resultMap } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["VirtualProduct", "SimpleProduct", "DownloadableProduct", "BundleProduct", "GiftCardProduct", "GroupedProduct", "ConfigurableProduct"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("sku", type: .scalar(String.self)),
            GraphQLField("image", type: .object(Image.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeVirtualProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "VirtualProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeSimpleProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "SimpleProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeDownloadableProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "DownloadableProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeBundleProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "BundleProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeGiftCardProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "GiftCardProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeGroupedProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "GroupedProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public static func makeConfigurableProduct(id: Int? = nil, name: String? = nil, sku: String? = nil, image: Image? = nil) -> Item {
          return Item(unsafeResultMap: ["__typename": "ConfigurableProduct", "id": id, "name": name, "sku": sku, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID number assigned to the product.
        @available(*, deprecated, message: "Use the `uid` field instead.")
        public var id: Int? {
          get {
            return resultMap["id"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The product name. Customers use this name to identify the product.
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// A number or code assigned to a product to identify the product, options, price, and manufacturer.
        public var sku: String? {
          get {
            return resultMap["sku"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sku")
          }
        }

        /// The relative path to the main image on the product page.
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductImage"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(url: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "ProductImage", "url": url])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The URL of the product image or video.
          public var url: String? {
            get {
              return resultMap["url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "url")
            }
          }
        }
      }
    }
  }
}
