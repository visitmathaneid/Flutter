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


**Material Design**
 
 * Material Design system is created by google. Flutter is embraced material design by default.It is not like everyone has to follow google design. but it is highly customizable and works better on iOS devices also. it is built into flutter but you also find apple styled widgets also.
 
 **Creating New Project**
 
  * In Terminal navigate to the folder you want to create the project then use the following command to create project.
  **flutter create <proj_name>** (Special characters except underscore,space,caps are all not allowed).
  
 **Run a Project** 
 
  * To run a project -> **flutter run**
  
 **Running on iOS Emulator**

  * Open iOS folder in Xcode and choose app name. In General part sigining section give your apple id(you can create new in apple developer account). Then you can select device or simulator for running our application on iOS device. You can also launch simulator by *open -a simulator.app* command.Since each every pixel is handled by flutter app will look very similar to the one on Android.

**Debugging Your Application**  

 * **Debug console** will be used to track the runtime errors.
 * You can run the application using **start debugging** option. It will open debug window and you can add breakpoint.
 

 **Dart DevTools**
 
  * Used for detecting UI (or) detecting performance you can use Dart Devtools. You can press ctrl+shift+P to open Dart Devtools in VS editor.For android studio you can do it by ctrl+shift+A and type open Dart DevTools and click to open.
  * **Flutter Inspector -** It will show the UI widget tree for debugging.
  * **Debug paint -** It will show widget borders in our app like in android.
  * **Repaint Rainbow -** It will show what was repainted when an action is occuring in the application. If the changing widget maintained separately in a proper way it will repaint only those part instead of whole screen.
  * **Performance Indicators -** We can detect memory, timeline, logging etc here.
  * For more info refer [here.](https://flutter.dev/docs/development/tools/devtools/overview)
 
  
 # Widgets Categories:
 
  * There are 7 categories of widgets available in Flutter. You can always look into [Flutter Widget catelog](https://flutter.dev/docs/development/ui/widgets) to refer what are all the widgets available. Some of the most important widgets and widgets i used here are listed below.
  

**Most Important Widgets and It's Widget Categories**

  **1) App/Page setup Widgets** 
  
  *MaterialApp/CupertinoApp -* App widget that descripes overall application design.
  
  *Scaffold/CupertinoScaffold -* Frame or a page in the application.
  
  **2) Layout Widgets**
  
  *Container -* It takes only one child mainly used for aligning items with padding, margin etc.
  
  *Row -* Aligning multiple childs at Horizontal Order.
  
  *Column -* Aligning multiple childs at Verical Order.
  
  *Center -* It takes only one child Widget and align it in the center of the screen.
  
  **3) Row/Column Widgets Children Widgets**
  
  *Flexible -* Used for setting relative width/ height between multiple childs.
  
  *Expanded -* Used for setting relative width/ height between multiple childs.
  
  **4) Content Container Widgets**
  
  *Stack -* Always align widgets on top of other widgets(like Framelayout in Android).
  
  *Card -* This Widget used for dropshadow etc. mainly used in ListViews.
  
  **5) Repeat Element Widgets**
  
  *Listview -* List of Widgets
  
  *Gridview -* Grid of Widgets.
  
  *ListTile -* List of items with some default styling & positioning.
  
  **6) ContentType Widgets**
  
  *Text -* To display text in the screen.
  
  *Image -* To display images in the screen.
  
  *Icon -* To display Icon Button.
  
  **7) User Input Widgets**
  
   *TextField -* To get text from user.
   
   *RaisedButton -* To get user click input from user.
   
   *FlatButton -* Same as RaisedButton widget but without bg.
   
   *GestureDetector -* For handling swipe, tap gestures.
   
   *InkWell -* Similar to GestureDetector to implement own touch window.
  
 # Application samples 

 * **[Build your first app and generated Files Explanation](https://github.com/visitmathaneid/Flutter/tree/master/flutter_basics_first)**
 * **[Hello world and main.dart Explanation, Widgets - Material.dart, MaterialApp, AppBar, Scaffold, Text](https://github.com/visitmathaneid/Flutter/tree/master/flutter_basics_second)**
 * **[Widgets - Visible(I/O) widgets, InVisible(Layout/Control) widgets, Row, Column, RaisedButton](https://github.com/visitmathaneid/Flutter/tree/master/flutter_basics_third)**
 * **[Stateful Widget Sample](https://github.com/visitmathaneid/Flutter/tree/master/flutter_basics_fourth)**
 * **[Using Private Properties](https://github.com/visitmathaneid/Flutter/tree/master/flutter_basics_five)**
 * **[Creating Custom Widget & Enums, Multiple Constructors](https://github.com/visitmathaneid/Flutter/tree/master/create_custom_widget)**
 * **[RaisedButton, Passing Callback Functions](https://github.com/visitmathaneid/Flutter/tree/master/buttons_and_passing_callback_functions)**
 * **[List, Maps, final, const](https://github.com/visitmathaneid/Flutter/tree/master/mapping_widget)**
 * **[Conditional Statements](https://github.com/visitmathaneid/Flutter/tree/master/conditional_statements)**
 * **[Getter, FlatButton](https://github.com/visitmathaneid/Flutter/tree/master/getter_and_resetting_widget)**
 * **[Splitting Widgets Properly](https://github.com/visitmathaneid/Flutter/tree/master/calculating_total_score_quiz_app)**
 * **[Flexible and Expanded](https://github.com/visitmathaneid/Flutter/tree/master/flexible_expand_sample)**
 
 
 
 
 
 