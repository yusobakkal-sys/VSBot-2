import SwiftUI
import WebKit

struct GameWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.bounces = false
        webView.isOpaque = false
        webView.backgroundColor = UIColor(red: 13/255, green: 17/255, blue: 23/255, alpha: 1)
        webView.scrollView.backgroundColor = webView.backgroundColor

        if let gameURL = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadFileURL(
                gameURL,
                allowingReadAccessTo: gameURL.deletingLastPathComponent()
            )
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

@main
struct VSBotApp: App {
    var body: some Scene {
        WindowGroup {
            GameWebView()
                .ignoresSafeArea()
                .statusBarHidden(true)
        }
    }
}
