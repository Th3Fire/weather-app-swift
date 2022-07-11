//
//  Blur.swift
//  Weather
//
//  Created by Wuttinun Chaoyos on 11/7/2565 BE.
//

import SwiftUI

class UIBlackdropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

struct Backdrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBlackdropView {
        UIBlackdropView()
    }
    func updateUIView(_ uiView: UIBlackdropView, context: Context) {}
}

struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = false
    var body: some View {
        Backdrop().blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
