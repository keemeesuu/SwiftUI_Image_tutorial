//
//  ContentView.swift
//  Image_tutorial
//
//  Created by hogy on 2021/05/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Image("myImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 10.0)
                    .offset(y: -95)
                
                
                CircleImageView()
                HStack {
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.google.com")
                                    .edgesIgnoringSafeArea(.all)
                                   
                    ){
                        Text("유튜브")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(20)
                            .background(Color.red)
                            .cornerRadius(3.0)
                        
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.naver.com")
                                    .edgesIgnoringSafeArea(.all)
                    ){
                        Text("네이버")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(20)
                            .background(Color.green)
                            .cornerRadius(3.0)
                        
                    }
                } //HStack
                .padding(30)
                
            } // VStack
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
