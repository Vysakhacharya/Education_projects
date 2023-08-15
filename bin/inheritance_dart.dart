


class Vehicle {
  String name;
  int maxSpeed;

  Vehicle(this.name, this.maxSpeed);

  void move() {
    print("The vehicle is moving at ${maxSpeed} mph.");
  }
}
class Car extends Vehicle {
  int numWheels = 4;

  Car(String name, int maxSpeed) : super(name, maxSpeed);

  void honk() {
    print("Beep!");
  }
}
void main() {
  var car = Car("Tesla", 200);
  car.move();
  car.honk();
}
