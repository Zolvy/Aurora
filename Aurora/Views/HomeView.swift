//
//  HomeView.swift
//  Aurora
//
//  Created by Daniel on 7/14/24.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome,")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

