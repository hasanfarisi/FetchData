//
//  ContentView.swift
//  FetchData
//
//  Created by mac on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetch = ApiServices()
    var body: some View {
        List(fetch.post){ post in
            VStack(alignment: .leading) {
                Text(post.title).font(.system(size: 24, weight: .bold, design: .rounded))
                Text(post.body).font(.system(size: 16, weight: .bold, design: .rounded))
                Button(action: {print("klik post ke \(post.id)")}){
                    Text("Klik saya")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
