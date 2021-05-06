//
//  FruitsDetailedView.swift
//  FruitsApp
//
//  Created by K12 Services on 06/05/21.
//

import SwiftUI

struct FruitsDetailedView: View {
    //MARK:- Properties
    var fruits : Fruit
    //MARK:- Body
    var body: some View {
       
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    //HEADER
                    
                    FruitHeaderView(fruit: fruits)
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruits.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruits.gradientColors[0])
                        //HEADLINE
                        Text(fruits.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        
                        //NUTRIENTS
                        
                        FruitsNutrientsView(fruit: fruits)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruits.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruits.gradientColors[0])
                        
                        //DESCRIPTION
                        Text(fruits.description)
                            .multilineTextAlignment(.leading)
                            
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VStack
                .navigationBarTitle(fruits.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: ScrollView
            .edgesIgnoringSafeArea(.top)
            
        }//: Navigation
    }
}
//MARK:- Preview
struct FruitsDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailedView(fruits: fruitData[0])
    }
}
