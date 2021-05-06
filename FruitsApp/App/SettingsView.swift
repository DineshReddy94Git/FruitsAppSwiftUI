//
//  SettingsView.swift
//  FruitsApp
//
//  Created by K12 Services on 06/05/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK:- BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing : 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
            }//: Scroll
            
        }//:Navigation
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            
    }
}
