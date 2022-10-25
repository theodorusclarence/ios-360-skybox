import ARKit
import RealityKit
import UIKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arView = ARView(frame: view.frame,
                            cameraMode: .ar,
                            automaticallyConfigureSession: false)
        view.addSubview(arView)
        
        let config = ARWorldTrackingConfiguration()
        arView.session.run(config)

        let skyboxName = "aerodynamics_workshop"
        let skyboxResource = try! EnvironmentResource.load(named: skyboxName)
        arView.environment.lighting.resource = skyboxResource
        arView.environment.background = .skybox(skyboxResource)
    }
}
