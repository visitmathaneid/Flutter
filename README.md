# Flutter 

Introduced by google on May 2017 Google I/O.

**What is Flutter?**

   * Tools that allows you to build native cross platform(iOS, Android) with one programming language and codebase.

**SDK** 

   * Tools to compile your code to native machine code and develop with ease.
   
**Framework/Widget Library**

   * Reusable UI building blocks with utility Functions, Packages.
    
 **Dart**
 
   * Programming language developed by google focused on frontend UI development. It's syntax is mixed of Java, JS, C#.
    
**Flutter VS Dart** 

  * Dart is programming language and flutter is framework for dart.Flutter is build up on dart. In other words flutter is a dart framework providing utility functions & UI elements. 
    
**Flutter Architecture**

  * Flutter will have code based UI generation means we have to create all the UI by using code no xml/storyboard. Most of the common functionalities will be written in one code base. 
  * To embrace the platform differences we can write/customize the platform specific code.
    
**Everything is Widget**

  * In flutter everything is widget. All the elements you are seeing in the screens are widgets. Even our entire app is a widget. every page is a widget. 
  * Our app is the Root widget in the app widget tree. where all other pages are child's of the root widget and views inside the each pages will come under its page.
  * Our code will be bunch of classes which can generate build for both iOS and Android platform.
    
**How it is transformed to a Native App**    
  
  ![Image of Flutter Architure](https://github.com/visitmathaneid/Flutter/blob/master/architecture.jpg)
  
  * Our code will be having flutter widget and our own widget which will be compiled in a way to generate more optimized native code. Then the native platform like iOS/Android will uses that code to show the app.So Flutter apps generally faster . performance is the best advantage of flutter apps.
  
**Flutter doesn't uses platform primitives**

 * UI code of flutter will not be converted to native widget code which means here RaisedButton will not be converted to UIButton for iOS and Button View for Android.
 * Flutter has own engine that controls and handles every pixel of the screen. so that gives greater control over how you want to build your UI.
 
**Installing or Upgrade**

 * To install flutter in your machine follow the step by step instruction [here.](https://flutter.dev/docs/get-started/install)
 * **flutter upgrade -** command to update the sdk and every packages in the stable channel. 
 * To change the channel to **beta/dev/master** we can use the following command.
   **flutter channel -** to show current channel.
   **flutter channel <channel_name>** (beta/dev/master)
 * To upgrade only the packages not the sdk we can use the following command(while updating any new depencies in pubspec.yaml)
   **flutter pub get -** to get all the dependencies without update.
   **flutter pub upgrade -** to get all the dependencies with update.
   
**Flutter Alternatives**

**Flutter** | **React Native** | **Ionic**
------------ | ------------- | -------------
Dart+Flutter | JS/React JS | JS(any or no Framework)
Compiled to native apps | Partially compiled(native UI components) to native apps | Webview hosted web apps
Doesn't compile to iOS/Android UI components | Does compile to iOS/Android UI components | Doesn't compile to iOS/Android UI components
Best performance | Better performance | Relatively lesser performance 



 
