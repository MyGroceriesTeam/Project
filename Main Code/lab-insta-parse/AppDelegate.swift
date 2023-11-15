

import UIKit

// TODO: Pt 1 - Import Parse Swift
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        ParseSwift.initialize(applicationId: "8AbsVLPaMvvUIPf3ZFGoO3erAeIhoFFquDgsx3JR",
                              clientKey: "Je6xAffOJaxkCVZr7lgGwa0YIQw3VPAE1QlNDCp6",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)


//

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
      
    }
}
