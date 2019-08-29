# Personal Expense Tracker

* For design a personal tracker first we will learn the following.

**DataTime**
  
   * *DateTime -* is a special data type used for saving date.

**Row/Column Widgets Alignment**

  * There are two arguments in Row/Column Widget for aligning the widgets.*mainAxisAlignment* - main axis is horizontal for row widget and vertical for column widget. *crossAxisAlignment* - cross axis is horizontal for column and vertical for row.By default row will take full width & required height only and inverse for column.
  
  * *mainAxisElement -* Values can be any from MainAxisElement enum. It has values like *start,center,end,spaceAround,spaceBetween etc*
  * *crossAxisElement -* Values can be any from CrossAxisElement enum. It has all the values of *mainAxisElement* and has one extra enum     *Stretch* which allows the cross axis to take the full available space. 
  
  **Container** | **Row/Column** 
------------ | ------------- 
One child | Multiple child
Rich Alignment & Styling Options | Alignment is there but no styling options
Flexible width | Always take full available main axis value.
Perfact for custom styling | Must use if widgets sit next to/ above each other.

**Formatting Dates**

 * For formatting date into our format there is no default function. So we need to install Intl 3rd party lib which is mostly used for date formatting. Refer [here](https://pub.dev/packages/intl) to know how to use it.
 
 **Bottom Sheet**
 
  * *showModalBottomSheet() -* is the function for showing bottom sheet.it takes 2 argument. *context -* which accepts BuildContext that we get this as argument in Build(). *builder -* accepts a context argument function that will return the widget for bottomsheet.
  
  * ShowModalBottomSheet() will close the dialog when tap is happen on anywhere in the screen. so to get the user input we have to use *GestureDetector* widget with empty anonynous function for *onTap* and *behavior* value as HitTestBehavior.opaque.
  
 * Bottomsheet should be inside the stateful widget otherwise the text field will get cleared.

 * To access stateful widget's property inside it's state we have to use *widget.variableName* like this.
 
 * To close the bottom sheet / any top screen we should use *Navigator.of(context).pop()*
 
 **Theme**
   
   * *theme* is one of the argument of MaterialApp Widget. It is used for setting global styles for the application.
   
   * we can set the theme using *ThemeData()* which is the class not widget.
   
   * We can set the primary color of the material design to primary color/ primary swatch. where primary color is the single color and primary swatch is the different different shadow of single color.
   
   * *context -* is a metadata object which has many info about the application like theme, bottomsheet etc. *accentColor -* is a color which is not from primaryswatch. it will be used for floatingActionButton by default.
   
  * we can set the diffent theme to appbar using *appBarTheme* argument. refer the below link to know how to do it. 
   
  * Refer [main.dart](https://github.com/visitmathaneid/Flutter/blob/master/expense_tracker_assignment/lib/main.dart) and [pubspec.yaml](https://github.com/visitmathaneid/Flutter/blob/master/expense_tracker_assignment/pubspec.yaml) for understanding  how to apply theme. 
   
**Applying Custom Fonts**

 * you can create your own folder and put the fonts inside that folder. here i created folder called asset and created font folder inside for fonts.
 
 * The other folders and other external dependencies we always have to mention it in the pubspec.yaml file. In pubspec.yaml file fonts integration is commented. uncomment it and change the names according to your font file names. careful in editing the pubspec.yaml since even intent spacing also matters and will throw errors.
 
 * *asset -* have to metion the path of the font here.
 * *weight -* used to inform flutter about bold type fonts.
 
 * After declaring the fonts in pubspec.yaml run pub get command. you can create the global font and set that as default for all the widgets by using *ThemeData()* which is having *fontFamily* argument there we can set our font.
 
 * To set the bold font for all the title kind of things you can set it using textTheme argument in *ThemeData()*
 
 * To set the different font for some of widget in your application you can do it in two ways. one is *TextStyle* has argument of *fontFamily* which will accept the font name as the value to set the font for particular widget. But this method is not advisable if our second font also has to be used in many places.
 
 * The other way to do is you can set the textBarTheme and appBartheme like we did it in this project.
 
  * Refer [main.dart](https://github.com/visitmathaneid/Flutter/blob/master/expense_tracker_assignment/lib/main.dart) and [pubspec.yaml](https://github.com/visitmathaneid/Flutter/blob/master/expense_tracker_assignment/pubspec.yaml) for understanding  how to apply font. 
  
   **Date Picker**
 
  * *showDatePicker() -* is the function for showing date picker.it takes 4 argument. *context -* which accepts BuildContext that we get this as argument in Build(). *initialDate -* date should show while opening the date picker. *FirstDate -* starting date range for date picker(cannot pick a date before firstDate). *lastDate -* ending date range for date picker(cannot pick a date after lastDate). Return type of this method is *Future<DataTime>*. 
  
  * *Future<DataTime>* Futute is the important concept in Dart which means the function will return a value not immediately but in future. API calling will be using this since after request made the response will not come immediately but after some time it will return. here after date is picked by user the date will be returned. it will be null incase of cancel.

  * *then() -* To get the value of Future we will use the then method which will wait for the response and then it will be called. 

  * Refer [create_transaction.dart](https://github.com/visitmathaneid/Flutter/blob/master/expense_tracker_assignment/lib/create_transaction.dart) for more information. 
  
  
**Useful Resources & Links**

 * Attached, you find the source code for this section (multiple code snapshots - also attached to individual lectures throughout this module).

 * In addition, the following resources might be helpful:

 * More on Layouting (with Column(), Row() etc.): https://flutter.dev/docs/development/ui/layout

 * More on Images & Assets: https://flutter.dev/docs/development/ui/assets-and-images

 * Official Widget Catalog: https://flutter.dev/docs/development/ui/widgets

 * Material Design Docs: https://material.io/design/

 * Flutter Theming: https://flutter.dev/docs/cookbook/design/themes
 
 
 
   
  
