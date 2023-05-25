//
//  ARViewContainer.swift
//  Virtusic
//
//  Created by Abiyyu Firmansyah on 25/05/23.
//

import RealityKit
import SwiftUI

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        
        arView = ARView(frame: .zero)
        
        // Load the Card scene from the "Experience" Reality File
        let card1 = try! Experience.loadCard1()
        let card2 = try! Experience.loadCard2()
        let card3 = try! Experience.loadCard3()
        let card4 = try! Experience.loadCard4()
        let card5 = try! Experience.loadCard5()
        
        // Add the card anchor to the scene
        arView.scene.anchors.append(card1)
        arView.scene.anchors.append(card2)
        arView.scene.anchors.append(card3)
        arView.scene.anchors.append(card4)
        arView.scene.anchors.append(card5)
        
//        #if DEBUG
//
//        arView.debugOptions = [.showFeaturePoints, .showAnchorOrigins, .showAnchorGeometry]
//
//        #endif
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
