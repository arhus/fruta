/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The primary entry point for the app's user interface. Can change between tab-based and sidebar-based navigation.
*/

import SwiftUI

struct ContentView: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
    
    var body: some View {
        VStack {
            Text(self.getSharedValue())
        }
    }

    private func getSharedValue() -> String {
        guard let sharedUserDefaults = UserDefaults(suiteName: "group.example.fruta.DEW5E8B52S") else {
            return "N/A"
        }
        guard let migratedData = sharedUserDefaults.string(forKey: "campaignId") else { return "N/A" }
        return migratedData
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
