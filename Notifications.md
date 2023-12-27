# Notification Center
- Setting the ID for the app's default notification center.
```swift
extension Notification.Name {
    static let notificationID = Notification.Name("notificationID")
}
```
- Creates a notification with a given name, sender, and information and posts it to the notification center.
```swift
let message = Message(title: "Notification", message: "Notification Message Sended.")
NotificationCenter.default.post(name: .notificationID,
                                object: nil,
                                userInfo: ["log":"Post Notification","message":message])
```
- Adds an entry to the notification center to call the provided selector with the notification.
```swift
NotificationCenter.default.addObserver(self,
                                       selector: #selector(self.listen(notification:)),
                                       name: .notificationID,
                                       object: nil)
```
- Selector
```swift
@objc func listen(notification : NSNotification){
    let log = notification.userInfo?["log"]
    let message = notification.userInfo?["message"] as! Message
}
```
