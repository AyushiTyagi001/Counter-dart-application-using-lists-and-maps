import 'dart:io';

class Counter_app{
  int count;
  String userName;

Counter_app({required this.count, required this.userName});
}

void main(List<String> arguments) {
  String? userName;
  Counter_app counter;
  bool stop = false;
  int textInput;
  
  print('''Hello!! welcome to the counter application
           Please enter your name :''');

  userName = stdin.readLineSync();
	if (userName != null && userName.isNotEmpty) {
	  counter = Counter_app(count:50, userName: userName);
	  } else {
	    return;
	  }
 
	while (!stop) {
	    print('''
	    Select which action you would like to perform :
	    0. Want to know the current counter value ?
	    1. Perform Increment
	    2. Perform Decrement
	    3. Perform Multiply
	    4. Perform Divide
	    5. Know the Remainder
	    6. Change your UserName
	    7. Stop 
	    ''');
	    print('Your Choice: ${textInput = int.parse(stdin.readLineSync()!)}');
      print('Current counter value: ${counter.count}');
	    switch (textInput) {
	      case 0:
	        print('Current value of Counter is: ${counter.count}');
	        break;
	      case 1:
	        increment(counterapp:counter,value:textInput);
          print("Result after increment is :${counter.count}");
	        break;
	      case 2:
	        decrement(counterapp: counter, value: textInput);
	        print('Value After Decrement is: ${counter.count}');
	        break;
	      case 3: 
	        multiply(counterapp: counter, value: textInput);
	        print('Result After performing Multiplication  is: ${counter.count}');
	        break;
	      case 4:
	        divide(counterapp: counter, value:textInput);
	        print('Result After performing Division is: ${counter.count}');
	        break;
	      case 5:
	        remainder(counterapp: counter, value: textInput);
	        print('Remainder After Division of value by Counter is: ${counter.count}');
	        break;
	      case 6:
	        changeUserName(counterapp:counter); 
	        break;
	      case 7:
	        stop = true;
          print("ends program here . Thanks!!!");
	        break;
	      default:
	        print('''Not Applicable choice
        choose from the above which action you want to perform''');
	        break;
	    }
	  }
}

void increment({required Counter_app counterapp,required int value, }){
   print('Enter the value of Increment Counter');
   int value=int.parse(stdin.readLineSync()!);
 counterapp.count = counterapp.count + value;
 }

void decrement({required Counter_app counterapp,required int value, }){
 print('Enter the value to Decrement Counter: ');
 int value=int.parse(stdin.readLineSync()!);
 counterapp.count = counterapp.count - value;
}

void multiply({required Counter_app counterapp,required int value, }){
 print('Enter the value to multiply with Counter value: ');
 int value=int.parse(stdin.readLineSync()!);
 counterapp.count = counterapp.count*value;
}

void divide({required Counter_app counterapp,required int value, }){
 print('Enter the value to divide from the Counter value : ');
 int value=int.parse(stdin.readLineSync()!);
 counterapp.count = counterapp.count~/value;
}

void remainder({required Counter_app counterapp,required int value, }){
 print('Enter the value to find the remainder after dividing from counter value : ');
 int value=int.parse(stdin.readLineSync()!);
 counterapp.count = counterapp.count%value;
}

void changeUserName({required Counter_app counterapp}) {
  String? tempInput = stdin.readLineSync();
  if (tempInput != null && tempInput.isNotEmpty) {
    print('New user is :$tempInput');
    counterapp.userName = tempInput;
}

}