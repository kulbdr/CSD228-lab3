# Flutter Digital Picture Frame

A **Flutter-based digital picture frame** that fetches images from AWS S3 and cycles through them every 10 seconds. The app features a customizable border and includes a pause/resume button for user control.

## Features
- **Seamless Image Rotation**: Automatically updates the displayed image every 10 seconds.
- **AWS S3 Integration**: Fetches and displays images stored in an AWS S3 bucket.
- **Custom Picture Frame**: Enhances image presentation with a unique border.
- **Pause/Resume Functionality**: Allows users to pause and resume the slideshow.
- **Optimized for Android & iOS**: Ensures the best resolution and performance.

## Prerequisites
Before running this project, ensure you have the following:
- **Flutter SDK** installed ([Download Flutter](https://flutter.dev/docs/get-started/install))
- **AWS S3 Bucket** with publicly accessible image URLs
- **IDE**: Visual Studio Code or Android Studio

## Installation
### 1️⃣ Clone the Repository
```sh
 git clone https://github.com/kulbdr/CSD228-lab3
 cd flutter-digital-frame
```

### 2️⃣ Install Dependencies
```sh
flutter pub get
```

### 3️⃣ Run the Application
```sh
flutter run
```

## AWS S3 Setup
1. Log in to **AWS Console** and navigate to **S3**.
2. Create an **S3 Bucket** and upload at least **four `.jpg` images**.
3. Set the images to **public access** in the bucket permissions.
4. Copy the **public URLs** of your images.
5. Update the `imageUrls` list in `main.dart` with the S3 URLs.

## Usage
- The app starts displaying images automatically upon launch.
- Tap the **floating action button** to **pause** or **resume** the image slideshow.

## Built With
- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **CachedNetworkImage** - Efficient image loading
- **AWS S3** - Cloud storage solution

## References

This app is created by me with some genuine help from AI.
# CSD228-lab3
