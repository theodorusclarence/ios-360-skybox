//
//  Skybox.swift
//  macro-360
//
//  Created by Clarence on 25/10/22.
//

import ARKit
import RealityKit
import SwiftUI

struct Skybox: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let arView = ARView(frame: .zero,
                            cameraMode: .ar,
                            automaticallyConfigureSession: false)

        let config = AROrientationTrackingConfiguration()
        arView.session.run(config)

        let skyboxName = "aphrodite"
        let skyboxResource = try! EnvironmentResource.load(named: skyboxName)
        arView.environment.lighting.resource = skyboxResource
        arView.environment.background = .skybox(skyboxResource)

        return arView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
