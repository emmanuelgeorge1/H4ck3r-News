//
//  WebView.swift
//  H4ck3r News
//
//  Created by Emmanuel George on 28/08/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView :UIViewRepresentable{
    let urlString:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString{
            if let url = URL(string:safeUrlString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
