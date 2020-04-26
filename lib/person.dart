
class Person {
  String name;
  int age;
  final String gender = 'Male';
  Person(String name, [int age]){
    this.name = name;
    this.age = age;
  }
  void work(){
    print('name is $name, age is $age');
  }
}

class Rectangle {
  num width, height;
  num get area => width * height;
      set area(value){
        width = value/20; 
      }
}