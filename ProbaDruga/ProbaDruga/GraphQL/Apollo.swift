//
//  Apollo.swift
//  ProbaDruga
//
//  Created by Jola on 13.6.22..
//

import Foundation
import Apollo

class Apollo {
    static let shared = Apollo()
    // 2
    let client: ApolloClient
    
    // 3
    init() {
        client = ApolloClient(url: URL(string: "https://crestviewm2.joladev.com/graphql")!)
    }
}
