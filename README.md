# Appetizers

Appetizers is an iOS app built using SwiftUI that allows users to browse and order various appetizers. 

## Screenshots

<p float="left">
  <img src="https://github-production-user-asset-6210df.s3.amazonaws.com/53428109/250209632-7f765cd9-a40f-4128-ae31-3125e41c1b9c.png" width="700" height="586" />
  <img src="https://github-production-user-asset-6210df.s3.amazonaws.com/53428109/250209348-3e94ef64-5998-4cc5-98b7-237c60284c1b.png" width="700" height="586" />
</p>

## Key Features

- **TabBar**: The app features a tab bar interface for easy navigation between different sections.
- **Networking**: The app uses a `NetworkManager` to handle network requests and retrieve appetizer data.
- **Error Handling**: Error handling and displaying alerts to the user are implemented in the app.
- **Loading Feedback**: The app provides visual feedback to the user during data loading with a `LoadingView`.
- **Image Downloads**: Appetizer images are downloaded from a network call and displayed in the app.
- **Detailed Views**: Each appetizer has a detailed view to show more information.
- **Account Management**: Users can view and update their account information in the `AccountView`.
- **Data Persistence**: User account information is persisted using `@AppStorage`.
- **Swipe to Delete**: The order screen allows users to delete items using swipe gestures.
- **Empty State**: An empty state view is implemented when there is no data to display.
- **Data Sharing**: The `@EnvironmentObject` property wrapper is used for sharing data across views.

## Concepts Learned

- App lifecycle and its impact on app behavior.
- Building network requests and handling responses with the `NetworkManager`.
- Sharing data across views using `@EnvironmentObject`.
- Data persistence using `@AppStorage`.
- Proper error handling and displaying alerts to the user.
- Efficiently loading and displaying images from network calls.
- Project organization and code structure using MVVM.
- Implementing swipe gestures for user interactions.
- Providing user-friendly feedback with empty state views.
