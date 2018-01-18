//
//The Follwing Class:
//* on loadView() create WKWebView
//* on viewDidLoad() set https url loads the url
//and allow the user swipe left and right
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{
    
    var webView: WKWebView!
    
    override func loadView() {
        //create new web view configuration
        let webConfiguration = WKWebViewConfiguration()
        //internalising web view
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        //sets delegate
        webView.navigationDelegate = self
        //set the current view to webview
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the urls of the website
        let url = URL(string: "https://bissextile-basket.000webhostapp.com")!
        //loads the url to webview
        webView.load(URLRequest(url: url))
        //alows option to swipe left and right
        webView.allowsBackForwardNavigationGestures = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

