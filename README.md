# StarTrivia

**StarTrivia** is an iOS application that tests your knowledge of the Star Wars universe. The app allows users to explore different aspects of the Star Wars lore, including characters, starships, vehicles, and planets. Users can select a category and answer trivia questions based on that category.

## Features

- **Multiple Categories**: Choose from different trivia categories such as Films, Starships, Vehicles, and Home Worlds.
- **API Integration**: Fetch real-time data from the Star Wars API (SWAPI) to keep the trivia questions updated.
- **Custom UI**: Enjoy a Star Wars-themed user interface with custom fonts and design elements.
- **Smooth Animations**: Experience fluid animations and transitions between different views.
- **Offline Mode**: Access previously fetched trivia questions even when offline.

## Technology Stack

- **Swift**: The primary programming language used to develop the app.
- **UIKit**: Used for building the user interface.
- **Alamofire**: A networking library used to handle HTTP requests and interact with the SWAPI.
- **CocoaPods**: Dependency manager for managing third-party libraries like Alamofire.
- **Core Data**: Used for local data storage to support offline mode.
- **Storyboards**: Interface Builder is used to design and layout the UI components.
- **Custom Fonts**: Star Wars-themed fonts to enhance the user experience.

## Project Structure

- **StarTrivia.xcodeproj**: The Xcode project configuration.
- **Controller**: Contains the view controllers that manage the UI and interactions.
- **Model**: Data models representing different entities like `Person`, `StarShip`, and `Vehicles`.
- **Services**: API service classes that handle data fetching from the SWAPI.
- **Utilities**: Utility classes and constants used across the project.
- **View**: Custom UI components and views like `BlackBgView` and `FadeEnableBtn`.
- **Assets.xcassets**: Contains all the images and icons used in the app.
- **Fonts**: Custom Star Wars-themed fonts used in the app.
- **Pods**: Third-party libraries managed by CocoaPods, including Alamofire.

## Installation

To run this project on your local machine:

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/StarTrivia.git
    ```
2. Install the dependencies:
    ```bash
    cd StarTrivia
    pod install
    ```
3. Open the project in Xcode:
    ```bash
    open StarTrivia.xcworkspace
    ```
4. Build and run the app on the simulator or a connected device.

## Requirements

- Xcode 12.0 or later
- iOS 14.0 or later
- CocoaPods 1.10.0 or later

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

