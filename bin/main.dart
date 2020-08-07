void main(List<String> arguments) {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print('Dart Quick Start Chapter 6');
  print('6. Anonymous Functions');
  //https://learning.oreilly.com/library/view/quick-start-guide/9781484255629/A490744_1_En_6_Chapter.html

  // Anonymous Functions

  code6_1();
  code6_2();
  // Exploring Higher-Order Functions
  code6_3();
  // A Closure Is a Special Function
  code6_4();
  code6_5();
  // summary
  code6_6();
//  Just making sure

}

//----------------------------------------------
//----------------------------------------------


//code 6.6
//Lambda is an anonymous function
class AboutLambdas{
  //first way of expressing Lambda or anonymous function
  Function addingNumbers = (int a, int b){
    var sum = a + b;
    return sum;
  };
  Function multiplyWithEight = (int num){
    return num * 8;
  };
  //second way of expressing Lambda by Fat Arrow
  Function showName = (String name) => name;
  //higher order functions pass function as parameter
  int higherOrderFunction(Function myFunction){
    int a = 10;
    int b = 20;
    print(myFunction(a, b));
  }
  //returning a function
  Function returningAFunction(){
    Function showAge = (int age) => age;
    return showAge;
  }
  //a closure can modify the parent scope
  String anyString = "Any Parent String";
  Function overridingParentScope = (){
    String message = "Overriding the parent scope";
    print(message);
  };
  Function show = (){
    // the anonymous function will return this originally
    Function gettingImage(){ // anonymous function returns a function
      String path = "This is a new path to image.";
      print(path);
    }
    return gettingImage;
  };
}

void code6_6() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.6");
  print("");

  // 15
  // 32
  // Sanjib
  // 30
  // 25
  // Overriding the parent scope
  // This is a new path to image.

  var add = AboutLambdas();
  var addition = add.addingNumbers(5, 10);
  print(addition);
  var mul = AboutLambdas();
  var result = mul.multiplyWithEight(4);
  print(result);
  var name = AboutLambdas();
  var myName = name.showName("Sanjib");
  print(myName);
  var higher = AboutLambdas();
  var higherOrder = higher.higherOrderFunction(add.addingNumbers);
  higherOrder;
  var showAge = AboutLambdas();
  var showingAge = showAge.returningAFunction();
  print(showingAge(25));
  var sayMessage = AboutLambdas();
  sayMessage.overridingParentScope();
  var image = AboutLambdas();
  String path = "This is an old path.";
  var imagePath = image.show();
  imagePath();

}

//----------------------------------------------
//----------------------------------------------

//code 6.5
//declaring an anonymous function without any parameter
Function show = (){
  Function gettingImage(){
    String path = "This is a new path to image.";
    print(path);
  }
  return gettingImage;
};

void code6_5() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.5");
  print("");
  String path = "This is an old path.";
  var showing = show();
  showing();
}

//----------------------------------------------
//----------------------------------------------


//code 6.4
//a closure can modify the parent scope
String message = "Any Parent String";
Function overridingParentScope = (){
  String message = "Overriding the parent scope";
  print(message);
};

void code6_4() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.4");
  print("");
  print(message);
  overridingParentScope();
}
//----------------------------------------------
//----------------------------------------------

//code 6.3
//returning a function
Function DividingByFour(){
  Function LetUsDivide = (int x) => x ~/ 4;
  return LetUsDivide;
}

void code6_3() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.3");
  print("");

  // result is a function
  var result = DividingByFour();
  print(result(56));
}

//----------------------------------------------
//----------------------------------------------

//code 6.2
class Cart2{
  Function ourReturnPolicy = (String messageToCustomer) {
    return messageToCustomer;
  };
  var returnUpdateCustomer = (String updateCustomer) => updateCustomer;
}

void code6_2() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.2");
  print("");
  var cart = Cart2();
  print(cart.ourReturnPolicy("Please read our return policy"));
  print(cart.returnUpdateCustomer("Your item has been shipped."));
}


//----------------------------------------------
//----------------------------------------------

//code 6.1
class Cart{
  Function addingTwoItems = (int item1, int item2){
    var sum = item1 + item2;
    return sum;
  };
}

void code6_1() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 6.1");
  print("");

  var cart = Cart();
  print("Your total price is:");
  print(cart.addingTwoItems(120, 458));
}
