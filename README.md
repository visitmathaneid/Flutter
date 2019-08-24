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