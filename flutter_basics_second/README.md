# Building an App from scratch

 *  Widgets are objects. Every app is just a bunch of widgets where the app widget is the root widget in the widget tree.
 
 * Look into the code in [main.dart](https://github.com/visitmathaneid/Flutter/blob/master/flutter_basics_second/lib/main.dart)

 *  **import 'package:flutter/material.dart' -** Header dependecies which we are importing from flutter sdk. Since new project will have the flutter dependecies declared in the pubspec.yaml file by default we can use this header file in our application. For other packages which are not part of flutter sdk we have to add the depencies in the pubspec.yaml first and then have to run flutter pub get/upgrade to get the dependencies then only we can import the packages.
 * **Material.dart -** It has lot of builtin widgets which are following material theme. It also has base class which allows us to create our own widgets. Every widget is a dart class which will be having build() method.
 * There are two types of widget available in flutter for creating our own widget. 
 
    **StatelessWidget -** base class for creating stateless(unchanged UI when it's data changes) widget. it has one abstract method    **Widget build(BuildContext context){ return widgetCreated;} -** *Widget* is the return type which takes the widget we created inside the build() method. *BuildContext* is an abstrct class which provides a handle to the location of a widget in the widget tree.
    
   **StatefulWidget -** base class for creating stateful(updating the UI when it's data changes) widget. will look into it better in the upcoming projects.
   
 * **Constructors and Named Arguments -** Unlike java here the constructors will be called without *new* keyword. Adding extra bracket to an method makes all arguments of the method as named arguments. also assigning default values to an argument makes that argument optional and adding *@required* make the argument as mandatory argument.
 
    ```
    class Person{
    String name;
    int age;
    
    //adding extra () to make as named argument. adding @required to mandate name, adding default value 30 to age to make that as optional argument.
    Person((@required String name, age = 30)){ 
    this.name = name;
    this.age = age;
    }
    
    void main(){
    var P1 = Person(age: 31, name: 'Mathan'); //we can change argument order if it is named arguments.
    var P2 = Person(name:'Kumar');
    }
    ```
    
  * **Shortcut Constructors** 
      
        
          class Person{
          String name;
          int age;
          Person((this.name,this.age=30));
          }
          

* **@Override -** is provided by dart. It is optional but have to use it for better code practice. 
* **@Required -** is provided by further for mentioning mandatory to arguments.
 
 * **runApp(MyRootWidget()) -** is a built-in method which is used to take our created widget tree and draws that into the screen. Which will be called inside the *main()* function since it the first function called when the execution starts. We can convert main method as arrow function 
    
         void main() {
         runApp(MyRootWidget());
         }
         
can be converted to
         
         void main() => runApp(MyRootWidget());
      
       
* **MaterialApp() -** This is the built-in class which has base setup to converting  the combination of widget to be rendered as a special widget. It has many aruguments but one we used is *home* which is a core widget which flutter will bring on the screen when this app is mounted into the screen.

* **Scaffold() -** A widget which has base setup for configuring a material app page in the screen. it has many arguments but we will mostly use only *appBar, body*. 
**appBar -** Named argument of Scaffold widget. It is used to configure the app bar in the screen. *appBar* will take AppBar widget which has all configuration like title, actions etc for configuring an app bar.
**body -** which is the remaining space in the screen to diplay the widget we want.It will take only one widget to pass more than one widget we have to go for Layout/Control Widgets which we will see in the upcoming projects.

* **Text() -** A stateless widget used to display some text on the screen.
    
* Adding , at the end of all params in the method will auto format the code. it is not mandatory but good practice.    
 
 
 