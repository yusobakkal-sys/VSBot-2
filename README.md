# VSBot iOS project

This project wraps the supplied single-file HTML game in an iOS WKWebView.

## Build an unsigned IPA from an iPad

1. Create a GitHub repository and upload the contents of this folder.
2. In the repository, open **Actions**.
3. Select **Build unsigned VSBot IPA** and tap **Run workflow**.
4. When the run finishes, open it and download the **VSBot-unsigned-IPA** artifact.
5. Extract the downloaded artifact ZIP to get `VSBot-unsigned.ipa`.

The IPA is unsigned. KSign still needs a valid signing certificate/profile to install it.
The GitHub Actions macOS runner performs the iOS compilation; the iPad itself does not compile iOS apps.

Bundle ID: `com.zigzag.vsbot`
