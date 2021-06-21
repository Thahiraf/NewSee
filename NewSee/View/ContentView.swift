//
//  ContentView.swift
//  NewSee
//
//  Created by Thahi on 21/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var newsManager = NewsManager()
    
    
    var body: some View {
        NavigationView{
            List(newsManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    }
        }
        .navigationTitle("NewSee")
        }
        .onAppear(){
            self.newsManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
