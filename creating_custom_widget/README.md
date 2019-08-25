# Creating Custom Widget

 * It's always good practice to create a custom widget in a separate dart file.
 * It's good convention to add final before the stateless widget's properties if those are immutable.
 
 **Styling and Layoutting Steps**
 
  * *style* arguments used to set style for a widget. For Text it can take TextStyle object. **TextStyle -** it's not a widget but a class. it has lot of arguments to style the text widget. for aligning or placing the widget we can use *textAlign* argument of Text Widget. values of it can be TextAlign.Center, TextAlign.Start, TextAlign.end etc.
  
  * **Container() -** Widget generally like layout in android. used in places where you want to align child like in center. It has *width* argument values will be in double. To set full width it will be double.infinity. It also has *margin, padding* property which can take EdgeInsets.all(10), EdgeInsets.only(), etc. Margin is the offspace outside the border of the view and padding is offspace inside the border.
  
 **Enums & Multiple Constructors**
 
  * Enums are just constants used for better naming & grouped together to avoid duplicates.
  * Multiple Constructors is a special feature in Dart. where we can specify different names for constructor with setting default value.
  
  ```
  class Person{
  String name;
  int age;
  
  Person(this.name,this.age);
  
  Person.veryOld(this.name){
  this.age = 60;
  }
  Person.mathan(this.age){
  this.name = 'mathan';
  }
  }
  ```
  

