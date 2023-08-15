


abstract class Animal {
  void speak();
}
class Dog extends Animal {
  @override
  void speak() {
    print("bow bow!");
  }
}
class Cat extends Animal {
  @override
  void speak() {
    print("Meow Meow!");
  }
}
void main() {
  var dog = Dog();
  dog.speak();

  var cat = Cat();
  cat.speak();
}
