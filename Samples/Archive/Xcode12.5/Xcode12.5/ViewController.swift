//
//  ViewController.swift
//  Xcode12.5
//
//  Created by thirata on 2021/05/23.
//

import UIKit
import WebKit
import SafariServices


class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    @IBOutlet weak var sampleBtn: UIButton!
    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var wkwebview: WKWebView!
//    override func loadView() {
//
//        let webConfiguration = WKWebViewConfiguration()
//        self.wkwebview = WKWebView(frame: .zero, configuration: webConfiguration)
//        self.wkwebview.uiDelegate = self
//        self.wkwebview.navigationDelegate = self
//        //view = wkwebview
//    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        

        let qiitaUrl = URL(string: "https://10xall.notion.site/10X-2023-c074cdda2c9b4ac997d9ec0543f74931")

        if let qiitaUrl = qiitaUrl {
            let safariViewController = SFSafariViewController(url: qiitaUrl as URL)
            present(safariViewController, animated: false, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        let url = URL(string: "https://10xall.notion.site/10X-2023-c074cdda2c9b4ac997d9ec0543f74931")
////        let url = URL(string: "https://10xall.notion.site/")
////        let url = URL(string: "https://www.yahoo.co.jp")
//        let request = URLRequest(url: url!)
//        //self.webview.loadRequest(request)
//
//        
//        self.wkwebview.load(request)
    }

    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration,
                 for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {

        if navigationAction.targetFrame == nil {
            webView.load(navigationAction.request)
        }

        return nil
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
           if navigationAction.navigationType == .linkActivated {
               decisionHandler(.cancel)
               DispatchQueue.main.async {
                   webView.load(navigationAction.request)
               }
           } else {
               decisionHandler(.allow)
           }
    }

    // 読み込み開始時イベント
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("start")
    }

    // 読み込み終了時イベント
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish")
    }

    // 読み込み失敗時イベント
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("fail")
    }
}


