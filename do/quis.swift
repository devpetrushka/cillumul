import SwiftUI

/// A SwiftUI view that displays a text which is converted before being drawn.
struct CustomTextView: View {
    /// The text to display.
    var text: String
    
    var body: some View {
        // Convert the text before drawing it on the screen.
        let convertedText = convertText(text)
        
        Text(convertedText)
            .padding()
            .background(Color.yellow)
            .cornerRadius(8)
    }
    
    /// Converts the given text to uppercase before drawing it.
    ///
    /// - Parameter text: The text to convert.
    /// - Returns: The converted text in uppercase.
    func convertText(_ text: String) -> String {
        return text.uppercased()
    }
}

/// The main content view that uses `CustomTextView` to display multiple texts.
struct ContentView: View {
    var body: some View {
        VStack {
            CustomTextView(text: "Hello, SwiftUI!")
            CustomTextView(text: "This is a custom text view.")
        }
        .padding()
    }
}

/// A preview provider for the `ContentView` struct, used to generate a live preview in Xcode.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
