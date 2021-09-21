// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func buildLane() {
        desc("Build for testing")
        scan(
            derivedDataPath: "DerivedData",
            buildForTesting: .fastlaneDefault(true)
        )
	}
    
    func unitTestLane() {
        desc("Run Unit-tests")
        scan(
            onlyTesting: "SingleAppGitTests",
            derivedDataPath: "DerivedData",
            testWithoutBuilding: .fastlaneDefault(true)
        )
    }

    func uiTestLane() {
        desc("Run UI-tests")
        scan(
            onlyTesting: "SingleAppGitUITests",
            derivedDataPath: "DerivedData",
            testWithoutBuilding: .fastlaneDefault(false)
        )
    }
}
