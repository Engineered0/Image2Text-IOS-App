import SwiftUI

struct ContentView: View {
    @State private var isImagePickerPresented = false
    @State private var recognizedText = ""

    var body: some View {
        VStack {
            Button("Take Photo") {
                isImagePickerPresented = true
            }
            .padding()

            Text(recognizedText)
                .padding()

            Spacer()
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePickerView(isPresented: $isImagePickerPresented, recognizedText: $recognizedText)
        }
    }
}

