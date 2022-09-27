//
//  ContentView.swift
//  H4ck3r News
//
//  Created by Emmanuel George on 28/08/22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject  var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailedView(url: post.url)) {
                    HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                }
            
                
            }
                .navigationBarTitle("H4ck3r News")
        }
        onAppear {
            self.networkManager.fetchData()
        }
      
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hola"),
//    Post(id: "3", title: "Hey")
//]
