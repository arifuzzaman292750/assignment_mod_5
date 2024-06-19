class Car {
  String brand;
  String model;
  int year;
  late double milesDriven;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year,) {
    milesDriven = 0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  Car car1 = Car('Toyota', 'Corolla', 2016);
  print('Car1 brand: ${car1.getBrand()}');
  print('Car1 model: ${car1.getModel()}');
  print('Car1 year: ${car1.getYear()}');
  car1.drive(100);
  print('Miles driven by Car1: ${car1.getMilesDriven()}');
  print('Car1 age: ${car1.getAge()}');

  Car car2 = Car('Ford', 'Porsche', 2017);
  print('Car2 brand: ${car2.getBrand()}');
  print('Car2 model: ${car2.getModel()}');
  print('Car2 year: ${car2.getYear()}');
  car2.drive(200);
  print('Miles driven by Car2: ${car2.getMilesDriven()}');
  print('Car2 age: ${car2.getAge()}');

  Car car3 = Car('Nissan', 'Kicks', 2018);
  print('Car3 brand: ${car3.getBrand()}');
  print('Car3 model: ${car3.getModel()}');
  print('Car3 year: ${car3.getYear()}');
  car3.drive(300);
  print('Miles driven by Car3: ${car3.getMilesDriven()}');
  print('Car3 age: ${car3.getAge()}');
  
  print('Total number of Car objects created: ${Car.numberOfCars}');
}