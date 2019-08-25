# Getter and Flat Button

* Getter is the special type its a mixture of property type and method.

		String get resultPhase{
		return 'your score '+ someRandomString;
		}
		
* Value of get will be calculated at runtime.we can also have if else block and everything as like other methods.

       String get getResult{
	   if(value >= 40){
	    return 'pass';
	   }else{
	     return 'fail';
	   }
	   }
	   	   