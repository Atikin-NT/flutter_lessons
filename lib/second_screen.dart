class Car{
  String name = "None";
  double speed = 0;

  void toPrint(){
    print("Name: $name, Speed: $speed");
  }
}


void registered1({String? name, double? speed}){
  Car car = Car();
  car.name = name ?? car.name;
  car.speed = speed ?? car.speed;
  car.toPrint();
}

Car registered2({String? name, double? speed}){
  Car car = Car();
  car.name = name ?? car.name;
  car.speed = speed ?? car.speed;
  car.toPrint();
  return car;
}

List<Car> registered3({List<String> ? names, List<double> ? speed}){
  List<Car> cars = [];
  names ??= [];
  speed ??= [];
  int maxLen = names.length > speed.length ? names.length : speed.length;
  for(int i = 0; i < maxLen; i++){
    cars.add(Car());
    if(i < names.length) cars[i].name = names[i] == "" ? cars[i].name : names[i];
    if(i < speed.length) cars[i].speed = speed[i];
  }
  return cars;
}