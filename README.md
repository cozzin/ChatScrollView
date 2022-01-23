# ChatScrollView

ScrollView for Chat Service

When you develop a chat service, you must need to develop a function to load previous messages. But if you use a default `ScrollView`, the scroll position becomes awkward after fetching previous messages. So I used a little trick and you just need to use the ChatScrollView.

## Installation
The best way to add ChatScrollView to your app is to use the Swift Package Manager:

```
https://github.com/cozzin/ChatScrollView.git
```

## Requirements
- iOS 11+
- macOS 11+

## Usage

```swift
ChatScrollView {
    ForEach(viewModel.messages) { message in
        MessageBubbleView(message: message)
    }
}
```

## Example

![Simulator Screen Recording - iPhone 13 - 2022-01-23 at 21 10 32](https://user-images.githubusercontent.com/11647461/150678200-e7e213b9-556d-4cd7-a40a-6df701997b75.gif)

