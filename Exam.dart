class Person{
  String _lastName= 'Fandinoo'; // Encapsulation: This property is not accesible to other classes
  
  void printName(String firstName){
   print("Name: "+ firstName);
 }
  void printAge(int age){
   print("Age: "+ age.toString());
  }
  void greet(){
    print("Wassup!");
  }
  void punch(){
    print("Kapow!");
  }
  void kick(){
    print("Kaboom!");
  }
  getAction(){ //Abstraction: exposing only the most important qualities and behaviors in a given circumstance.
    punch();
    kick();
  }
}

class Pedro extends Person{}  //Inheritance: This child class inherits parent's class properties and behaviors

class Raymund extends Person { 
  @override
  void greet(){
    super.greet();            //Polymorphism: adds another behavior(method)
    print("How are you?");
  }
}

void main(){
  Pedro pete = new Pedro();
  Raymund ray = new Raymund();
  ray.printName("Raymund");
  ray.printAge(18);
  print("\nRaymund greets to Pedro.");
  ray.greet();
  
  print("\nPedro was intimidated by Raymund.");
  pete.greet();
  pete.getAction();
  
}
