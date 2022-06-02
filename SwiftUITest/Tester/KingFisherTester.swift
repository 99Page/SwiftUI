//
//  KingFisherTester.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/31.
//
// PostImage에서 직접 링크를 이용

import SwiftUI
import Kingfisher

struct KingFisherTester: View {
    var body: some View {
        VStack {
            Text("KFImage")
            KFImage(URL(string: "https://i.postimg.cc/mZ52x6h8/Unknown.png")!)
                .onFailure({ error in
                    print("Error : \(error)")
                })
                .resizable()
                .frame(width: 100, height: 100)
                .clipped()
        }
    }
}

struct KingFisherTester_Previews: PreviewProvider {
    static var previews: some View {
        KingFisherTester()
    }
}
