//
//  ScrollOffset.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/19.
//

import SwiftUI

struct ScrollOffset: View {
    
    @State var offset: Int = 0
    
    var body: some View {
        ScrollViewOffset { offset in
            self.offset = Int(offset)
        } content: {
            VStack {
                Text("\(offset)")
                ForEach(0..<100) { index in
                    Text("\(index)")
                }
            }
        }

    }
}

struct ScrollOffset_Previews: PreviewProvider {
    static var previews: some View {
        ScrollOffset(offset: 0)
    }
}

struct ScrollViewOffset<Content: View>: View {
  let onOffsetChange: (CGFloat) -> Void
  let content: () -> Content

  init(
    onOffsetChange: @escaping (CGFloat) -> Void,
    @ViewBuilder content: @escaping () -> Content
  ) {
    self.onOffsetChange = onOffsetChange
    self.content = content
  }

  var body: some View {
    ScrollView {
      offsetReader
      content()
        .padding(.top, -8)
    }
    .coordinateSpace(name: "frameLayer")
    .onPreferenceChange(OffsetPreferenceKey.self, perform: onOffsetChange)
  }

  var offsetReader: some View {
    GeometryReader { proxy in
      Color.clear
        .preference(
          key: OffsetPreferenceKey.self,
          value: proxy.frame(in: .named("frameLayer")).minY
        )
    }
    .frame(height: 0)
  }
}

private struct OffsetPreferenceKey: PreferenceKey {
  static var defaultValue: CGFloat = .zero
  static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {}
}
