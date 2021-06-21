//
//  SwiftUIView.swift
//  NewSee
//
//  Created by Thahi on 21/06/2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
       DetailView(url: "")
    }
}

