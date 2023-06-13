import SwiftUI
import UserNotifications

@main
struct MyDatePlannerApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My Date Planner")
                .font(.largeTitle)
                .bold()
            Button("Add New Date") {
                addNewDate()
            }
        }
    }
    
    func addNewDate() {
        // Add code to create and save the new date
        
        let content = UNMutableNotificationContent()
        content.title = "New Date Added"
        content.body = "A new date has been added to your planner."
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "newDate", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}
