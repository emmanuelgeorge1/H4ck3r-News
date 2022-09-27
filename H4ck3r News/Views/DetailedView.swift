//
//  DetailedView.swift
//  H4ck3r News
//
//  Created by Emmanuel George on 28/08/22.
//

import SwiftUI


struct DetailedView: View {
    let url:String?
    var body: some View {
       WebView(urlString: url)
      
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "https://www.google.com")
    }
}

