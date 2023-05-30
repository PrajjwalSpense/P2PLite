//
//  File.swift
//  
//
//  Created by Prajjwal on 30/05/23.
//

import Foundation
import UIKit
import WebKit

public class P2PWebView: WKWebView {
    public var urlString: String = ""
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
        self.urlString = "";
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:urlString) {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
