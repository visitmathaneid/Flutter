# Stateful Widget

 * If we are updating value of a statelesswidget the widget will not keep track of it's state means it will not be refreshed or recreated.

 * State is data/information used by your application. Stateless widget can not have state.

  ![Image of State Stateless Widget](https://github.com/visitmathaneid/Flutter/blob/master/state_stateless.jpg)
  
 * In statelesswidget data can be changed externally after passing to widget. but inside widget the value will not be changed and so UI will not be updated. But in Statefulwidget data will be maintained by internal state so whenever a change in the data the UI will be refreshed.

 * For using statefulwidget our app should extends StatefulWidget class which will be having *createState()* method there we have return it's state.
 
 * State should be maintained in a separate class which extends *State<{Stateful widget class name}>*. The reason for creating separate class for maintaining state is widget can be recreated multiple times for config changes etc. but state should not be recreated it has to persist it's value. so it is maintained as a separate class.

* **setState() -** This method used to tells the widget to recreate the UI with new values. It's accepts function as a argument so all the data changes which affects the UI should be happening inside this function. After the data changes the setState() forces the flutter to call the build() again to update the widget(However full recreation will not happen only required parts will be repainted). 

* So converting the stateless widget to stateful widget involves moving all the code to the state class and then inside createState() method return the created state class and move the data changes to setState(). Refer [this](https://github.com/visitmathaneid/Flutter/blob/master/flutter_basics_fourth/lib/main.dart) for sample.    
 
