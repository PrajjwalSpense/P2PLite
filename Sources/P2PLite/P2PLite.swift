public struct P2PLite {
    public private(set) var text = "Hello, World!"

    public init() {
        var p2pWebView = P2PWebView();
        p2pWebView.urlString = "www.google.com";
    }
    
    public func initialize(){
        
    }
}
