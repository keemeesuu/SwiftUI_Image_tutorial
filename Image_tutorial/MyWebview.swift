//
//  MyWebview.swift
//  Image_tutorial
//
//  Created by hogy on 2021/05/20.
//

import SwiftUI
import WebKit


struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    // ui view 그리기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping(언래핑)
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
        
    }
    
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
