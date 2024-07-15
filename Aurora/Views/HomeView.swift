//
//  HomeView.swift
//  Aurora
//
//  Created by Daniel on 7/14/24.
//
import SwiftUI
struct HomeView: View {
    @AppStorage("username") private var username: String = ""
    var body: some View {
           VStack(alignment: .leading, spacing: 7) {
               Text("Welcome, \(username)")
                   .font(.title)
                   .fontWeight(.bold)
               Text("Recently Played")
                   .font(.title2)
           }
           .padding()
           .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
       }
   }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

