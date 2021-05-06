//
//  ContentView.swift
//  FruitsApp
//
//  Created by K12 Services on 06/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitsDetailedView(fruits: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            
        }//:NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
