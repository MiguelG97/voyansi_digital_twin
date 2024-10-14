//
//  webview_controller.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 13/10/24.
//
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable{
    var urlLink: String = "https://vos9x.com/"
    @Binding var isLoading: Bool
    
    func makeUIView(context: Context) -> some UIView {
        let wkwebview = WKWebView()
        wkwebview.navigationDelegate = context.coordinator
        
        let request = URLRequest(url: URL(string: urlLink)!)
        wkwebview.load(request)
        return wkwebview
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    func makeCoordinator() -> WebViewCoordinator {
        WebViewCoordinator {
            isLoading = true
        } didFinish: {
            isLoading = false
        }
    }
    
}
class WebViewCoordinator: NSObject, WKNavigationDelegate{
    var didStart: () -> Void
    var didFinish: () -> Void
    init(didStart: @escaping () -> Void, didFinish: @escaping () -> Void) {
        self.didStart = didStart
        self.didFinish = didFinish
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        didStart()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        didFinish()
    }
    
}
