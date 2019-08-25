# Visible(I/O) Widgets and InVisible(Layout/Control Widgets)

* There are two different types of child widgets which we will be using to design our page widget.

* **Visible(Input/Output) widgets -** Whatever widget user sees in the screen like Text(), Card(), RaisedButton() etc.
* **InVisible(Layout/Control) widgets -** Whatever widget user not seeing in the screen but used for grouping/ controlling the other widgets. eg: Row(), Column(), ListView() etc.
* **Container() -** is a special type of widgets which will fall into both the categories.

For the syntax and usage of below widgets refer [here.](https://github.com/visitmathaneid/Flutter/blob/master/flutter_basics_third/lib/main.dart)

* **Column() -** Invisible widget to align group of other widgets vertically. This has *children* named arguments which will take the list of widgets and *mainAxisAlignment, crossAxisAlignment* which we can use it to align the element center, start, end etc. By default columns will take full height of the screen.

* **Row() -** Invisible widget to align group of other widgets horizontally. This has *children* named arguments which will take the list of widgets and *mainAxisAlignment, crossAxisAlignment* which we can use it to align the element center, start, end etc. By default row will take full width of the screen and many more named arguments.

* **RaisedButton() -** Visible Widget which will take many named arguments *child, onPressed* etc. *child* takes another widget(mostly Text) while this widget get clicked onPressed function will be executed. *onPressed* It will take a function as value. by default it will be null means this widget will be disabled. we have to pass the function without paranthesis otherwise the function will get executed in the compile time itself.

* **Anonymous Function -** we can also use anonymous function for onpressed argument of *RaisedButton*. If your function has to be called in only one place and also having very less number of code you can go for this function. Both RaisedButton 2, 3 takes anonymous function but 2 takes anonymous arrow function and 3 takes normal anonymous function in this project.
