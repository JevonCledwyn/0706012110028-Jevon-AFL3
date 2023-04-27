//
//  CategoryHome.swift
//  0706012110028-Jevon-AFL3
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        // add navigation view
        NavigationView {
            Text("Hello, World!")
            // Set the title to Featured
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
