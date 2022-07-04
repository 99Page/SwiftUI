//
//  ImageViewTester.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/26.
//

import SwiftUI

struct ImageViewTester: View {
    
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            if let image = image {
                image
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)
            } else {
                Image(systemName: "plus.viewfinder")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 120, height: 120)
            }
               
                       
            Button {
                showImagePicker.toggle()
            } label: {
                Text("Image Picker")
            }
            .sheet(isPresented: $showImagePicker, onDismiss: {
                loadImage()
            }) {
                ImagePicker(image: $selectedUIImage)
        }
        }
        
        
    }
}

struct ImageViewTester_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewTester()
    }
}
