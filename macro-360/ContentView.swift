//
//  ContentView.swift
//  macro-360
//
//  Created by Clarence on 25/10/22.
//

import SwiftUI
import ARKit
import RealityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Skybox()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
