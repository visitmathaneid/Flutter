# List and Maps

 * List is same like in other language.It is used to store list of same kind of elements.
 
		
		var list = ['Mathan','kumar','Mathankumar'];
		
		
 * To access the list 
 
		
		var name = list[0];
		
		
 * Maps is used for complex data structures. It will save the data in key-value pair format.
 
		
		var questions = [{'question':'what is your favorite color?', 'answers':['black','blue','red']}];
		

 * To acces the map
 
		
		var question = questions[0]['question'];
		var answers = questions[0]['answers'];
		
		
 * Mapping list of strings to widgets
 
		
		(questions[0]['answers'] as List<String>).map((answer){
		return Text(answer); 
		}).toList()
		
		
  **... -** This operator will take the list and add all the values of list to current list.
  
 **Final vs Const**

 * **final -** Gets the value at runtime but don't change the value once assigned means runtime constants.
 * **const -** Compile time known value & don't change the value after that.

 * we can declare const before the variables (or) before the values. if value is const you can assign different value to variable but you cannot add/ remove the extra value. if variable is const then you cannot assign different value to the variable. 
 
 * Technically dart is just storing the pointer of the value to the variable not the entire value means value will be stored in memory somewhere and only the starting address of the value will be stored in the variable.
 
 

  